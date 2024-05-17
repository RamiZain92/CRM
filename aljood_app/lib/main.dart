import 'dart:math';
import 'dart:typed_data';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//flutter_downloader
//import 'package:flutter_downloader/flutter_downloader.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flyweb/firebase_options.dart';
import 'package:flyweb/i18n/AppLanguage.dart';
import 'package:flyweb/i18n/i18n.dart';
import 'package:flyweb/src/enum/connectivity_status.dart';
import 'package:flyweb/src/helpers/AdMobService.dart';
import 'package:flyweb/src/helpers/ConnectivityService.dart';
import 'package:flyweb/src/helpers/SharedPref.dart';
import 'package:flyweb/src/helpers/notification_service.dart';
import 'package:flyweb/src/models/settings.dart';
import 'package:flyweb/src/pages/InitialScreen.dart';
import 'package:flyweb/src/pages/SplashScreen.dart';
import 'package:flyweb/src/services/theme_manager.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:flyweb/src/helpers/Deeplink.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

String? token = "";
String url = "https://www.google.com";
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /*  Initialize AdMob */
  AdMobService.initialize();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  //flutter_downloader
  //await FlutterDownloader.initialize(debug: true);

  await GlobalConfiguration().loadFromAsset("configuration");

  await GlobalConfiguration().loadFromAsset("configuration");
  AppLanguage appLanguage = AppLanguage();
  await appLanguage.fetchLocale();

  SharedPref sharedPref = SharedPref();
  Settings? settings = null;
  Uint8List? imgSplashBase64 = null;
  Uint8List? logoSplashBase64 = null;

  /*  For Enable WebRTC (Remove this comment)*/
  //await Permission.camera.request();
  //await Permission.microphone.request();

  /*  For Enable Storage (Remove this comment)*/
  //await Permission.storage.request();

  // To turn off landscape mode
  // ( For Rotation Application )
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  try {
    var set = await sharedPref.read("settings");
    if (set != null) {
      settings = Settings.fromJson(set);

      imgSplashBase64 =
          await networkImageToBase64(settings.splash!.img_splash_url!);

      logoSplashBase64 =
          await networkImageToBase64(settings.splash!.logo_splash_url!);

      if (imgSplashBase64 == null || logoSplashBase64 == null) {
        settings = null;
      }
    }
  } on Exception catch (exception) {
  } catch (exception) {}

  runApp(ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(),
      child: MyApp(
          appLanguage: appLanguage,
          settings: settings,
          imgSplashBase64: imgSplashBase64,
          logoSplashBase64: logoSplashBase64)));
}

Future<Uint8List?> networkImageToBase64(String imageUrl) async {
  try {
    Response response = await get(Uri.parse(imageUrl));
    if (response.statusCode == 200) {
      final bytes = response.bodyBytes;
      return bytes;
    } else {
      return null;
    }
  } catch (err) {
    return null;
  }
}

class MyApp extends StatefulWidget {
  const MyApp(
      {Key? key,
      required this.appLanguage,
      required this.settings,
      required this.imgSplashBase64,
      required this.logoSplashBase64})
      : super(key: key);

  final AppLanguage appLanguage;
  final Settings? settings;
  final Uint8List? imgSplashBase64;
  final Uint8List? logoSplashBase64;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    NotificationService.initialize();
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print(message);
      launchUrl(Uri.parse(url));
    });
    AwesomeNotifications().setListeners(
        onActionReceivedMethod: NotificationService.onActionReceivedMethod);
    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) async {
        print(message);
        NotificationService.createNotification(
            id: Random().nextInt(10000),
            title: message.notification!.title.toString(),
            body: message.notification!.body.toString());
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DeepLinkBloc _bloc = DeepLinkBloc();

    return ChangeNotifierProvider<AppLanguage>(
      create: (_) => widget.appLanguage,
      child: Consumer<AppLanguage>(builder: (context, provider, child) {
        return StreamProvider<ConnectivityStatus>(
            initialData: ConnectivityStatus.Wifi,
            create: (context) =>
                ConnectivityService().connectionStatusController.stream,
            child: Consumer<ThemeNotifier>(
                builder: (context, theme, _) => MaterialApp(
                      /*theme: ThemeData(
                    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0x11000000)),
                  ), */
                      theme: theme.getTheme(),
                      locale: provider.appLocal,
                      localizationsDelegates: [
                        I18n.delegate,
                        GlobalMaterialLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                      ],
                      supportedLocales: I18n.delegate.supportedLocales,
                      debugShowCheckedModeBanner: false,
                      home: renderHome(),
                    )));
      }),
    );
  }

  Widget renderHome() {
    requestPermission();
    if (widget.settings == null)
      return InitialScreen();
    else {
      return SplashScreen(
          settings: widget.settings!,
          bytesImgSplashBase64: widget.imgSplashBase64!,
          byteslogoSplashBase64: widget.logoSplashBase64!);
    }
  }

  requestPermission() async {
    token = await FirebaseMessaging.instance.getToken();
    print("tokkk $token");
    NotificationSettings setting =
        await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }
}
