import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flyweb/main.dart';
import 'package:url_launcher/url_launcher.dart';

class NotificationService {
  static Future initialize() async {
    AwesomeNotifications().initialize(
      null,
      [
        NotificationChannel(
            channelGroupKey: 'notification_channel',
            channelKey: 'notification_channel',
            channelName: 'Notifications',
            channelDescription: 'Notification channel for calls',
            defaultColor: Color(0xFF9D50DD),
            importance: NotificationImportance.Max,
            ledColor: Colors.white)
      ],
      debug: true,
      channelGroups: [
        NotificationChannelGroup(
            channelGroupKey: 'basic_channel_group',
            channelGroupName: 'Basic group')
      ],
    );

    await AwesomeNotifications()
        .isNotificationAllowed()
        .then((isAllowed) async {
      if (!isAllowed) {
        await AwesomeNotifications().requestPermissionToSendNotifications();
      }
    });
  }

  static createNotification({
    required int id,
    required String title,
    required String body,
    ActionType actionType = ActionType.Default,
    NotificationLayout layout = NotificationLayout.Default,
    String? category,
  }) {
    AwesomeNotifications().createNotification(
        content: NotificationContent(
      id: id,
      channelKey: "notification_channel",
      title: title,
      body: body,
      notificationLayout: layout,
      actionType: actionType,
      autoDismissible: true,
      wakeUpScreen: true,
    ));
  }

  @pragma("vm:entry-point")
  static Future <void> onActionReceivedMethod(ReceivedAction receivedAction) async {
    launchUrl(Uri.parse(url));
  }
}
