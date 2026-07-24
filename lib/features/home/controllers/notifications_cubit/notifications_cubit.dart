import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/features/home/models/notification_model.dart';
import 'package:medical_diagnostic_app1/features/home/repos/notifications_repo.dart';

part 'notifications_state.dart';
part 'notifications_cubit.freezed.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  NotificationsCubit() : super(NotificationsState.initial());

  Future<void> fetchNotifications() async {
    emit(
      state.copyWith(
        op: Operation.loading,
        statusMessage: "Loading notifications",
      ),
    );
    final response = await _notificationsRepo.viewNotifications();
    response.fold(
      (error) {
        emit(
          state.copyWith(
            op: Operation.failure,
            statusMessage: error.errorMessage,
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
      (response) {
        final List<NotificationModel> notifications =
            (response.data["items"] as List<dynamic>).map((n) {
              return NotificationModel.fromJson(n);
            }).toList();
        emit(
          state.copyWith(
            op: Operation.success,
            statusMessage: "Notifications Loaded successfully",
            notifications: notifications,
          ),
        );
        countUnreadNotifications();
      },
    );
  }

  Future<void> countUnreadNotifications() async {
    emit(
      state.copyWith(
        op: Operation.loading,
        statusMessage: "Loading notifications",
      ),
    );
    final response = await _notificationsRepo.countUnreadNotifications();
    response.fold(
      (error) {
        emit(
          state.copyWith(
            op: Operation.failure,
            statusMessage: error.errorMessage,
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
      (response) {
        emit(
          state.copyWith(
            op: Operation.success,
            statusMessage: "Notifications unread count Loaded successfully",
            notificationCount:
                response.data["data"]["unreadNotificationNumber"] ?? 0,
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
    );
  }

  Future<void> deleteAllNotifications() async {
    emit(
      state.copyWith(
        op: Operation.loading,
        statusMessage: "Deleting notifications",
      ),
    );
    final response = await _notificationsRepo.deleteAllNotification();
    response.fold(
      (error) {
        emit(
          state.copyWith(
            op: Operation.failure,
            statusMessage: error.errorMessage,
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
      (response) {
        emit(
          state.copyWith(
            op: Operation.success,
            statusMessage: "Notifications Deleted successfully",
            notificationCount: 0,
            loadingNotifications: [],
            notifications: [],
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
    );
  }

  Future<void> deleteNotification({required int notificationId}) async {
    emit(
      state.copyWith(
        loadingNotifications: [...state.loadingNotifications, notificationId],
      ),
    );
    final response = await _notificationsRepo.deleteNotification(
      notificationId: notificationId,
    );
    final temp = [...state.loadingNotifications];
    temp.remove(notificationId);
    emit(state.copyWith(loadingNotifications: temp));

    response.fold(
      (error) {
        emit(
          state.copyWith(
            op: Operation.failure,
            statusMessage: error.errorMessage,
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
      (response) {
        emit(
          state.copyWith(
            op: Operation.success,
            statusMessage: "Notification Deleted successfully",
          ),
        );
        fetchNotifications();
      },
    );
  }

  Future<void> readNotification({required int notificationId}) async {
    emit(
      state.copyWith(
        loadingNotifications: [...state.loadingNotifications, notificationId],
      ),
    );
    final response = await _notificationsRepo.readNotification(
      notificationId: notificationId,
    );
    final temp = [...state.loadingNotifications];
    temp.remove(notificationId);
    emit(state.copyWith(loadingNotifications: temp));

    response.fold(
      (error) {
        emit(
          state.copyWith(
            op: Operation.failure,
            statusMessage: error.errorMessage,
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
      (response) {
        emit(
          state.copyWith(
            op: Operation.success,
            statusMessage: "Notification Read successfully",
          ),
        );
        fetchNotifications();
      },
    );
  }

  Future<void> unreadNotification({required int notificationId}) async {
    emit(
      state.copyWith(
        loadingNotifications: [...state.loadingNotifications, notificationId],
      ),
    );
    final response = await _notificationsRepo.unreadNotification(
      notificationId: notificationId,
    );

    final temp = [...state.loadingNotifications];
    temp.remove(notificationId);
    emit(state.copyWith(loadingNotifications: temp));

    response.fold(
      (error) {
        emit(
          state.copyWith(
            op: Operation.failure,
            statusMessage: error.errorMessage,
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
      (response) {
        emit(
          state.copyWith(
            op: Operation.success,
            statusMessage: "Notification Unread successfully",
          ),
        );
        fetchNotifications();
      },
    );
  }

  Future<void> markAllAsRead() async {
    emit(
      state.copyWith(
        op: Operation.loading,
        statusMessage: "Deleting notifications",
      ),
    );
    final response = await _notificationsRepo.markAllAsRead();
    response.fold(
      (error) {
        emit(
          state.copyWith(
            op: Operation.failure,
            statusMessage: error.errorMessage,
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
      (response) {
        emit(
          state.copyWith(
            op: Operation.success,
            statusMessage: "Notificationss marked as read successfully",
          ),
        );
        fetchNotifications();
      },
    );
  }

  final _notificationsRepo = NotificationsRepo();
}
