part of 'notifications_cubit.dart';

@freezed
sealed class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    required List<NotificationModel> notifications,
    required int notificationCount,
    required Operation op,
    required String statusMessage,
    required List<int> loadingNotifications,
  }) = _NotificationsState;
  factory NotificationsState.initial() {
    return NotificationsState(
      notifications: [],
      notificationCount: 0,
      op: Operation.neutral,
      statusMessage: "",
      loadingNotifications: [],
    );
  }
}
