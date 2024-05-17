import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signup_encrypt/Locale/cacheHelper.dart';
import 'package:signup_encrypt/apis.dart';
import 'package:signup_encrypt/constants.dart';
import 'package:signup_encrypt/screens/list_users.dart';
import 'package:signup_encrypt/widgets.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  token = CacheHelper.getData(key: 'token');
  Widget startWidget = SignUpScreen();
  if(token != null){
    startWidget = ListOfUsers();
  }
  runApp( MyApp(startWidget: startWidget) );
}

class MyApp extends StatefulWidget {
  final Widget startWidget;
  const MyApp({super.key, required this.startWidget});
  static final Apis apis = Apis();
  static IO.Socket? socket;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    MyApp.apis.getUser().then((value) {
      socketConnection(userModel!.role);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sign up with encryption',
        home: widget.startWidget
    );
  }
}


class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool passwordVisible = false;
  bool loading = false;
  late TextEditingController userNameController;
  late TextEditingController passwordController;
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  Apis api = Apis();

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void changeVisibilityPassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final bool isMobileDevice = mediaQuery.size.shortestSide < 600;
    return Scaffold(
      body: Container(
        height: mediaQuery.size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              subColor,
              primaryColor,
              secondaryColor,
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(isMobileDevice ? ten : sixteen),
              child: Form(
                key: loginKey,
                child: Card(
                  elevation: three,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(ten)),
                  child: Padding(
                    padding: EdgeInsets.all(isMobileDevice ? ten : sixteen),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'images/login.png',
                            width: threeHundred,
                            height: oneHundredFifty,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            login,
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: isMobileDevice ? twenty : twentyFour,
                            ),
                          ),
                          SizedBox(
                            height: isMobileDevice ? sixteen : twenty,
                          ),
                          defaultFormField(
                            controller: userNameController,
                            isMobileDevice: isMobileDevice,
                            labelText: userId,
                            validator: (String? v) {
                              if (v!.isEmpty) {
                                return userIdReuired;
                              }
                            },
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(eight),
                              child: Icon(
                                Icons.person_outline_outlined,
                                size: isMobileDevice ? twentyTwo : thirtyTwo,
                                color: primaryColor.withOpacity(0.5),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: isMobileDevice ? ten : sixteen,
                          ),
                          defaultFormField(
                            controller: passwordController,
                            isMobileDevice: isMobileDevice,
                            labelText: password,
                            obscureText: !passwordVisible,
                            validator: (String? v) {
                              if (v!.isEmpty) {
                                return passwordReuired;
                              }
                            },
                            suffixIcon: InkWell(
                              onTap: changeVisibilityPassword,
                              child: Padding(
                                  padding: EdgeInsets.all(eight),
                                  child: passwordVisible
                                      ? Icon(
                                          Icons.visibility_outlined,
                                          size: isMobileDevice
                                              ? twentyTwo
                                              : thirtyTwo,
                                          color: primaryColor.withOpacity(0.5),
                                        )
                                      : Icon(
                                          Icons.visibility_off_outlined,
                                          size: isMobileDevice
                                              ? twentyTwo
                                              : thirtyTwo,
                                          color: primaryColor.withOpacity(0.5),
                                        )),
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(eight),
                              child: Icon(
                                Icons.lock_open,
                                size: isMobileDevice ? twentyTwo : thirtyTwo,
                                color: primaryColor.withOpacity(0.5),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: isMobileDevice ? ten : sixteen,
                          ),
                          loading? const CircularProgressIndicator(color: primaryColor) : defaultButton(
                            isMobileDevice: isMobileDevice,
                            onPressed: () async {
                              setState(() {
                                loading= true;
                              });
                              if(loginKey.currentState!.validate()){
                               bool res = await api.login(username: userNameController.text, password: passwordController.text);
                               if(res){
                                 socketConnection(userModel!.role);
                                 navigateTo(context, const ListOfUsers());
                               }
                              }
                              setState(() {
                                loading= false;
                              });
                            },
                            buttonTitle: login,
                          ),
                          SizedBox(
                            height: isMobileDevice ? ten : twenty,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

extension StringExtension on String {
  String capitalizee() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}


Future<void> socketConnection(String typeUser) async {
  try {
    final query = {
      'type': typeUser,
    };
    final socketOptions = IO.OptionBuilder()
        .setTransports(['websocket'])
        .setAuth({'token': token})
        .setQuery(query)
        .enableForceNew()
        .build();

    MyApp.socket = IO.io('http://192.168.0.106:3000', socketOptions);
    final websocket = MyApp.socket!.connect();
    websocket.onConnectError((data) => debugPrint('Error when connecting: $data'));
    websocket.onError((data) => debugPrint('Connection error: $data'));
    websocket.onConnectTimeout((data) => debugPrint('Connection timeout error: $data'));
    MyApp.socket!.onConnect((_) {
      debugPrint('Connected');
      MyApp.socket!.on('newFeature', (data) {
        print(data);
        showToast("There are new feature please review");
      });
      MyApp.socket!.on('updateFeature', (data) {
        print(data);
        showToast("There are new update on features");
      });
    });
    MyApp.socket!.onDisconnect((_) {
      debugPrint('Disconnected $socketOptions');
    });
  } catch (error) {
    debugPrint('Error during socket connection: $error');
  }
}