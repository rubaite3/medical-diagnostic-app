// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locale_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocaleState _$LocaleStateFromJson(Map<String, dynamic> json) => _LocaleState(
  locale: const LocaleToFromJsonConverter().fromJson(
    json['locale'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$LocaleStateToJson(_LocaleState instance) =>
    <String, dynamic>{
      'locale': const LocaleToFromJsonConverter().toJson(instance.locale),
    };
