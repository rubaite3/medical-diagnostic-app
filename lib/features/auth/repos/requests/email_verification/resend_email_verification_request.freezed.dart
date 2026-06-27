// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_email_verification_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResendEmailVerificationRequest {

 String get email;
/// Create a copy of ResendEmailVerificationRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResendEmailVerificationRequestCopyWith<ResendEmailVerificationRequest> get copyWith => _$ResendEmailVerificationRequestCopyWithImpl<ResendEmailVerificationRequest>(this as ResendEmailVerificationRequest, _$identity);

  /// Serializes this ResendEmailVerificationRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResendEmailVerificationRequest&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'ResendEmailVerificationRequest(email: $email)';
}


}

/// @nodoc
abstract mixin class $ResendEmailVerificationRequestCopyWith<$Res>  {
  factory $ResendEmailVerificationRequestCopyWith(ResendEmailVerificationRequest value, $Res Function(ResendEmailVerificationRequest) _then) = _$ResendEmailVerificationRequestCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ResendEmailVerificationRequestCopyWithImpl<$Res>
    implements $ResendEmailVerificationRequestCopyWith<$Res> {
  _$ResendEmailVerificationRequestCopyWithImpl(this._self, this._then);

  final ResendEmailVerificationRequest _self;
  final $Res Function(ResendEmailVerificationRequest) _then;

/// Create a copy of ResendEmailVerificationRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,}) {
  return _then(ResendEmailVerificationRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ResendEmailVerificationRequest].
extension ResendEmailVerificationRequestPatterns on ResendEmailVerificationRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResendEmailVerificationRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResendEmailVerificationRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResendEmailVerificationRequest value)  $default,){
final _that = this;
switch (_that) {
case _ResendEmailVerificationRequest():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResendEmailVerificationRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ResendEmailVerificationRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResendEmailVerificationRequest() when $default != null:
return $default(_that.email);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email)  $default,) {final _that = this;
switch (_that) {
case _ResendEmailVerificationRequest():
return $default(_that.email);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email)?  $default,) {final _that = this;
switch (_that) {
case _ResendEmailVerificationRequest() when $default != null:
return $default(_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResendEmailVerificationRequest implements ResendEmailVerificationRequest {
   _ResendEmailVerificationRequest({required this.email});
  factory _ResendEmailVerificationRequest.fromJson(Map<String, dynamic> json) => _$ResendEmailVerificationRequestFromJson(json);

@override final  String email;

/// Create a copy of ResendEmailVerificationRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResendEmailVerificationRequestCopyWith<_ResendEmailVerificationRequest> get copyWith => __$ResendEmailVerificationRequestCopyWithImpl<_ResendEmailVerificationRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResendEmailVerificationRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendEmailVerificationRequest&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'ResendEmailVerificationRequest(email: $email)';
}


}

/// @nodoc
abstract mixin class _$ResendEmailVerificationRequestCopyWith<$Res> implements $ResendEmailVerificationRequestCopyWith<$Res> {
  factory _$ResendEmailVerificationRequestCopyWith(_ResendEmailVerificationRequest value, $Res Function(_ResendEmailVerificationRequest) _then) = __$ResendEmailVerificationRequestCopyWithImpl;
@override @useResult
$Res call({
 String email
});




}
/// @nodoc
class __$ResendEmailVerificationRequestCopyWithImpl<$Res>
    implements _$ResendEmailVerificationRequestCopyWith<$Res> {
  __$ResendEmailVerificationRequestCopyWithImpl(this._self, this._then);

  final _ResendEmailVerificationRequest _self;
  final $Res Function(_ResendEmailVerificationRequest) _then;

/// Create a copy of ResendEmailVerificationRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(_ResendEmailVerificationRequest(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
