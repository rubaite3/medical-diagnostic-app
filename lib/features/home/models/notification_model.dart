import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
sealed class NotificationModel with _$NotificationModel {
  factory NotificationModel({
    String? id,
    String? title,
    String? message,
    String? type,
    @JsonKey(name: "notifiable_type") String? notifiableType,
    @JsonKey(name: "notifiable_id") int? notifiableId,
    Map<String, dynamic>? data,
    @JsonKey(name: "read_at") String? readAt,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}
