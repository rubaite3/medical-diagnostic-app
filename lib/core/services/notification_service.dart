import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:open_filex/open_filex.dart';
import 'package:permission_handler/permission_handler.dart';

/// Top-level handler for notification taps. Must be a top-level (or static)
/// function so it can be used as the background message handler (Flutter
/// requires a callable entry point for background execution).
@pragma('vm:entry-point')
void onNotificationTapped(NotificationResponse response) {
  final payload = response.payload;
  if (payload != null && payload.isNotEmpty) {
    OpenFilex.open(payload);
  }
}

class NotificationService {
  NotificationService._();

  static final NotificationService instance = NotificationService._();

  static const String _channelId = 'report_downloads';
  static const String _channelName = 'Report Downloads';
  static const int _notificationId = 1001;

  final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();

  /// Initialize native settings and wire tap-to-open handlers.
  Future<void> init() async {
    const android = AndroidInitializationSettings('@mipmap/launcher_icon');
    const ios = DarwinInitializationSettings();
    const settings = InitializationSettings(
      android: android,
      iOS: ios,
    );

    await _plugin.initialize(
      settings,
      onDidReceiveNotificationResponse: onNotificationTapped,
      onDidReceiveBackgroundNotificationResponse: onNotificationTapped,
    );

    // NOTE: We intentionally do NOT auto-open the file here based on
    // `getNotificationAppLaunchDetails()`. On several Android versions it
    // reports `didNotificationLaunchApp == true` on a *normal* restart as long
    // as the download notification is still in the shade, which would reopen
    // the PDF on every app launch. Tapping the notification (handled by
    // `onNotificationTapped`) opens the file instead.
  }

  /// Requests the POST_NOTIFICATIONS permission on Android 13+ (API 33).
  /// Returns true when notifications are allowed (or not required).
  Future<bool> requestPermission() async {
    if (Platform.isAndroid) {
      final status = await Permission.notification.status;
      if (status.isGranted) return true;
      final result = await Permission.notification.request();
      return result.isGranted;
    }
    return true;
  }

  /// Shows a notification confirming the PDF was downloaded. Tapping it
  /// opens the file (handled by [onNotificationTapped]).
  Future<void> showPdfDownloaded(String filePath, {String? title}) async {
    const androidDetails = AndroidNotificationDetails(
      _channelId,
      _channelName,
      importance: Importance.high,
      priority: Priority.high,
      playSound: true,
    );
    const iosDetails = DarwinNotificationDetails();
    const details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _plugin.show(
      _notificationId,
      title ?? 'Report downloaded',
      'Tap to open your diagnostic report (PDF).',
      details,
      payload: filePath,
    );
  }

  /// Shows a notification for a push message. If [payload] is a file path,
  /// tapping it opens that file; otherwise it just opens the app.
  Future<void> showPushNotification({
    required String title,
    required String body,
    String? payload,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      _channelId,
      _channelName,
      importance: Importance.high,
      priority: Priority.high,
      playSound: true,
    );
    const iosDetails = DarwinNotificationDetails();
    const details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _plugin.show(
      _notificationId + 1,
      title,
      body,
      details,
      payload: payload,
    );
  }

  /// Opens a file from a notification payload (used by FCM tap handling).
  void openFileFromPayload(String payload) {
    OpenFilex.open(payload);
  }
}
