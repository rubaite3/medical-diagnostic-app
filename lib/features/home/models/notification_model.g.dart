// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    _NotificationModel(
      id: json['id'] as String?,
      type: json['type'] as String?,
      title: json['title'] as String?,
      message: json['message'] as String?,
      data: json['data'] as String?,
      isRead: json['is_read'] as bool?,
      readAt: json['read_at'] as String?,
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'message': instance.message,
      'data': instance.data,
      'is_read': instance.isRead,
      'read_at': instance.readAt,
      'user_id': instance.userId,
    };
