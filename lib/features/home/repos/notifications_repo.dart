import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medical_diagnostic_app1/core/api/app_response.dart';
import 'package:medical_diagnostic_app1/core/api/dio_client.dart';
import 'package:medical_diagnostic_app1/core/consts/api_consts.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';

import '../../../core/api/app_error.dart';

class NotificationsRepo {
  Future<Either<AppError, AppResponse>> viewNotifications() async {
    final response = await _dio.get(ApiConsts.notifications);
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> countUnreadNotifications() async {
    final response = await _dio.get(ApiConsts.countUnread);
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> deleteNotification({
    required String notificationId,
  }) async {
    final response = await _dio.delete(
      "${ApiConsts.notifications}/$notificationId",
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> deleteAllNotification() async {
    final response = await _dio.delete(ApiConsts.removeAllNotifications);
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> readNotification({
    String notificationId = "",
  }) async {
    final response = await _dio.patch(
      "${ApiConsts.notifications}/$notificationId/read",
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> unreadNotification({
    String notificationId = "",
  }) async {
    final response = await _dio.patch(
      "${ApiConsts.notifications}/$notificationId/unread",
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> markAllAsRead() async {
    final response = await _dio.patch(ApiConsts.markAllAsRead);
    return Utils.mapStatusCodeToResponse(response);
  }

  final Dio _dio = dioInstance;
}
