// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  fullName: json['full_name'] as String?,
  avatar: json['avatar'] as String?,
  birthDate: json['birth_date'] as String?,
  gender: json['gender'] as String?,
  isSmoker: json['is_smoker'] as bool?,
  hasDiabetes: json['has_diabetes'] as bool?,
  hasHypertension: json['has_hypertension'] as bool?,
  isPregnant: json['is_pregnant'] as bool?,
  activityLevel: json['activity_level'] as String?,
  lastCheckupDate: json['last_checkup_date'] as String?,
  token: json['access_token'] as String?,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'full_name': instance.fullName,
  'avatar': instance.avatar,
  'birth_date': instance.birthDate,
  'gender': instance.gender,
  'is_smoker': instance.isSmoker,
  'has_diabetes': instance.hasDiabetes,
  'has_hypertension': instance.hasHypertension,
  'is_pregnant': instance.isPregnant,
  'activity_level': instance.activityLevel,
  'last_checkup_date': instance.lastCheckupDate,
  'access_token': instance.token,
};
