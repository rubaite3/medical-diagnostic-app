import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:medical_diagnostic_app1/core/services/notification_service.dart';

/// Handles Firebase Cloud Messaging: permission, token, and message display.
class FcmService {
  FcmService._();

  static final FcmService instance = FcmService._();

  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  String? _token;

  /// The current FCM registration token, or null if not yet fetched.
  /// Call [getToken] to force a fetch if it's still null.
  String? get token => _token;

  Future<void> init() async {
    // Handle messages received while the app is in the background/terminated.
    FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundHandler);

    // iOS/macOS/web permission prompt.
    await _requestPermission();

    // Foreground messages: show them via the local notification service
    // so they appear in the system shade and can be tapped.
    FirebaseMessaging.onMessage.listen(_onForegroundMessage);

    // When the user taps a notification that opened the app from background.
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenedApp);

    // If the app was launched from a terminated state by a notification.
    final initial = await _messaging.getInitialMessage();
    if (initial != null) {
      _handleOpened(initial);
    }

    // Retrieve the token (send this to your backend to target this device).
    _token = await _messaging.getToken();
    if (_token != null) {
      // ignore: avoid_print
      print('FCM token: $_token');
    }

    // Keep the token up to date (it can rotate, e.g. after reinstall).
    _messaging.onTokenRefresh.listen((newToken) {
      _token = newToken;
      // ignore: avoid_print
      print('FCM token refreshed: $newToken');
      // TODO: send the new token to your backend here.
    });
  }

  /// Returns the stored token, fetching it if necessary.
  Future<String?> getToken() async {
    _token ??= await _messaging.getToken();
    return _token;
  }

  Future<void> _requestPermission() async {
    await _messaging.requestPermission(alert: true, badge: true, sound: true);
  }

  void _onForegroundMessage(RemoteMessage message) {
    final notification = message.notification;
    final title = notification?.title ?? message.data['title'];
    final body = notification?.body ?? message.data['body'];
    if (title == null && body == null) return;

    NotificationService.instance.showPushNotification(
      title: title ?? '',
      body: body ?? '',
      payload: message.data['file_path'],
    );
  }

  void _onMessageOpenedApp(RemoteMessage message) {
    _handleOpened(message);
  }

  void _handleOpened(RemoteMessage message) {
    final filePath = message.data['file_path'];
    if (filePath != null && filePath.isNotEmpty) {
      // Reuse the open-file behavior via the local notification service.
      NotificationService.instance.openFileFromPayload(filePath);
    }
    // Otherwise the app is simply opened to its default route.
  }
}

/// Top-level function required by Firebase for background/terminated handling.
@pragma('vm:entry-point')
Future<void> _firebaseBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  // Notifications delivered while terminated are shown by the system
  // automatically (via the notification payload). For data-only messages
  // you would persist or process here.
}
