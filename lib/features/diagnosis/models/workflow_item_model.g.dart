// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkflowItemModel _$WorkflowItemModelFromJson(Map<String, dynamic> json) =>
    _WorkflowItemModel(
      key: json['key'] as String?,
      label: json['label'] as String?,
      status: json['status'] as String?,
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
    );

Map<String, dynamic> _$WorkflowItemModelToJson(_WorkflowItemModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'status': instance.status,
      'completed_at': instance.completedAt?.toIso8601String(),
    };
