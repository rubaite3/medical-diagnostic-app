import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
sealed class NotificationModel with _$NotificationModel {
  factory NotificationModel({
    String? id,
    String? type,
    String? title,
    String? message,
    String? data,
    @JsonKey(name: "is_read") bool? isRead,
    @JsonKey(name: "read_at") String? readAt,
    @JsonKey(name: "user_id") String? userId,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
