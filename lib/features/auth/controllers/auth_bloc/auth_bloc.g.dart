// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthState _$AuthStateFromJson(Map<String, dynamic> json) => _AuthState(
  auth: $enumDecode(_$AuthEnumMap, json['auth']),
  isOnline: json['isOnline'] as bool,
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
  token: json['token'] as String?,
  op: $enumDecode(_$OperationEnumMap, json['op']),
  statusMessage: json['statusMessage'] as String,
);

Map<String, dynamic> _$AuthStateToJson(_AuthState instance) =>
    <String, dynamic>{
      'auth': _$AuthEnumMap[instance.auth]!,
      'isOnline': instance.isOnline,
      'user': instance.user,
      'token': instance.token,
      'op': _$OperationEnumMap[instance.op]!,
      'statusMessage': instance.statusMessage,
    };

const _$AuthEnumMap = {
  Auth.guest: 'guest',
  Auth.auth: 'auth',
  Auth.loading: 'loading',
};

const _$OperationEnumMap = {
  Operation.success: 'success',
  Operation.failure: 'failure',
  Operation.neutral: 'neutral',
  Operation.loading: 'loading',
};
