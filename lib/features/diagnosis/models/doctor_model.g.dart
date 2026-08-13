// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) => _DoctorModel(
  id: (json['id'] as num?)?.toInt(),
  fullName: json['full_name'] as String?,
  specialization: json['specialization'] as String?,
  phone: json['phone'] as String?,
  message: json['message'] as String?,
);

Map<String, dynamic> _$DoctorModelToJson(_DoctorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'specialization': instance.specialization,
      'phone': instance.phone,
      'message': instance.message,
    };
