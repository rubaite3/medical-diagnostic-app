import 'package:freezed_annotation/freezed_annotation.dart';

part 'workflow_item_model.freezed.dart';
part 'workflow_item_model.g.dart';

@freezed
sealed class WorkflowItemModel with _$WorkflowItemModel {
  factory WorkflowItemModel({
    String? key,
    String? label,
    String? status,
    @JsonKey(name: "completed_at") DateTime? completedAt,
  }) = _WorkflowItemModel;

  factory WorkflowItemModel.fromJson(Map<String, dynamic> json) =>
      _$WorkflowItemModelFromJson(json);
}
