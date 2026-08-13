import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_model.freezed.dart';
part 'doctor_model.g.dart';

@freezed
sealed class DoctorModel with _$DoctorModel {
  factory DoctorModel({
    int? id,
    @JsonKey(name: "full_name") String? fullName,
    String? specialization,
    String? phone,
    String? message,
  }) = _DoctorModel;

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);
}
