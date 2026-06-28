// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProfileRequest {

@JsonKey(name: "full_name") String? get fullName; String? get avatar;@JsonKey(name: "birth_date") String? get birthDate; String? get gender;@JsonKey(name: "is_smoker") bool? get isSmoker;@JsonKey(name: "has_diabetes") bool? get hasDiabetes;@JsonKey(name: "has_hypertension") bool? get hasHypertension;@JsonKey(name: "is_pregnant") bool? get isPregnant;@JsonKey(name: "activity_level") String? get activityLevel;@JsonKey(name: "last_checkup_date") String? get lastCheckupDate;
/// Create a copy of UpdateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileRequestCopyWith<UpdateProfileRequest> get copyWith => _$UpdateProfileRequestCopyWithImpl<UpdateProfileRequest>(this as UpdateProfileRequest, _$identity);

  /// Serializes this UpdateProfileRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileRequest&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isSmoker, isSmoker) || other.isSmoker == isSmoker)&&(identical(other.hasDiabetes, hasDiabetes) || other.hasDiabetes == hasDiabetes)&&(identical(other.hasHypertension, hasHypertension) || other.hasHypertension == hasHypertension)&&(identical(other.isPregnant, isPregnant) || other.isPregnant == isPregnant)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&(identical(other.lastCheckupDate, lastCheckupDate) || other.lastCheckupDate == lastCheckupDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,avatar,birthDate,gender,isSmoker,hasDiabetes,hasHypertension,isPregnant,activityLevel,lastCheckupDate);

@override
String toString() {
  return 'UpdateProfileRequest(fullName: $fullName, avatar: $avatar, birthDate: $birthDate, gender: $gender, isSmoker: $isSmoker, hasDiabetes: $hasDiabetes, hasHypertension: $hasHypertension, isPregnant: $isPregnant, activityLevel: $activityLevel, lastCheckupDate: $lastCheckupDate)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileRequestCopyWith<$Res>  {
  factory $UpdateProfileRequestCopyWith(UpdateProfileRequest value, $Res Function(UpdateProfileRequest) _then) = _$UpdateProfileRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "full_name") String? fullName, String? avatar,@JsonKey(name: "birth_date") String? birthDate, String? gender,@JsonKey(name: "is_smoker") bool? isSmoker,@JsonKey(name: "has_diabetes") bool? hasDiabetes,@JsonKey(name: "has_hypertension") bool? hasHypertension,@JsonKey(name: "is_pregnant") bool? isPregnant,@JsonKey(name: "activity_level") String? activityLevel,@JsonKey(name: "last_checkup_date") String? lastCheckupDate
});




}
/// @nodoc
class _$UpdateProfileRequestCopyWithImpl<$Res>
    implements $UpdateProfileRequestCopyWith<$Res> {
  _$UpdateProfileRequestCopyWithImpl(this._self, this._then);

  final UpdateProfileRequest _self;
  final $Res Function(UpdateProfileRequest) _then;

/// Create a copy of UpdateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = freezed,Object? avatar = freezed,Object? birthDate = freezed,Object? gender = freezed,Object? isSmoker = freezed,Object? hasDiabetes = freezed,Object? hasHypertension = freezed,Object? isPregnant = freezed,Object? activityLevel = freezed,Object? lastCheckupDate = freezed,}) {
  return _then(UpdateProfileRequest(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,isSmoker: freezed == isSmoker ? _self.isSmoker : isSmoker // ignore: cast_nullable_to_non_nullable
as bool?,hasDiabetes: freezed == hasDiabetes ? _self.hasDiabetes : hasDiabetes // ignore: cast_nullable_to_non_nullable
as bool?,hasHypertension: freezed == hasHypertension ? _self.hasHypertension : hasHypertension // ignore: cast_nullable_to_non_nullable
as bool?,isPregnant: freezed == isPregnant ? _self.isPregnant : isPregnant // ignore: cast_nullable_to_non_nullable
as bool?,activityLevel: freezed == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String?,lastCheckupDate: freezed == lastCheckupDate ? _self.lastCheckupDate : lastCheckupDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProfileRequest].
extension UpdateProfileRequestPatterns on UpdateProfileRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProfileRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProfileRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProfileRequest value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProfileRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "full_name")  String? fullName,  String? avatar, @JsonKey(name: "birth_date")  String? birthDate,  String? gender, @JsonKey(name: "is_smoker")  bool? isSmoker, @JsonKey(name: "has_diabetes")  bool? hasDiabetes, @JsonKey(name: "has_hypertension")  bool? hasHypertension, @JsonKey(name: "is_pregnant")  bool? isPregnant, @JsonKey(name: "activity_level")  String? activityLevel, @JsonKey(name: "last_checkup_date")  String? lastCheckupDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProfileRequest() when $default != null:
return $default(_that.fullName,_that.avatar,_that.birthDate,_that.gender,_that.isSmoker,_that.hasDiabetes,_that.hasHypertension,_that.isPregnant,_that.activityLevel,_that.lastCheckupDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "full_name")  String? fullName,  String? avatar, @JsonKey(name: "birth_date")  String? birthDate,  String? gender, @JsonKey(name: "is_smoker")  bool? isSmoker, @JsonKey(name: "has_diabetes")  bool? hasDiabetes, @JsonKey(name: "has_hypertension")  bool? hasHypertension, @JsonKey(name: "is_pregnant")  bool? isPregnant, @JsonKey(name: "activity_level")  String? activityLevel, @JsonKey(name: "last_checkup_date")  String? lastCheckupDate)  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileRequest():
return $default(_that.fullName,_that.avatar,_that.birthDate,_that.gender,_that.isSmoker,_that.hasDiabetes,_that.hasHypertension,_that.isPregnant,_that.activityLevel,_that.lastCheckupDate);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "full_name")  String? fullName,  String? avatar, @JsonKey(name: "birth_date")  String? birthDate,  String? gender, @JsonKey(name: "is_smoker")  bool? isSmoker, @JsonKey(name: "has_diabetes")  bool? hasDiabetes, @JsonKey(name: "has_hypertension")  bool? hasHypertension, @JsonKey(name: "is_pregnant")  bool? isPregnant, @JsonKey(name: "activity_level")  String? activityLevel, @JsonKey(name: "last_checkup_date")  String? lastCheckupDate)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileRequest() when $default != null:
return $default(_that.fullName,_that.avatar,_that.birthDate,_that.gender,_that.isSmoker,_that.hasDiabetes,_that.hasHypertension,_that.isPregnant,_that.activityLevel,_that.lastCheckupDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateProfileRequest implements UpdateProfileRequest {
   _UpdateProfileRequest({@JsonKey(name: "full_name") this.fullName, this.avatar, @JsonKey(name: "birth_date") this.birthDate, this.gender, @JsonKey(name: "is_smoker") this.isSmoker, @JsonKey(name: "has_diabetes") this.hasDiabetes, @JsonKey(name: "has_hypertension") this.hasHypertension, @JsonKey(name: "is_pregnant") this.isPregnant, @JsonKey(name: "activity_level") this.activityLevel, @JsonKey(name: "last_checkup_date") this.lastCheckupDate});
  factory _UpdateProfileRequest.fromJson(Map<String, dynamic> json) => _$UpdateProfileRequestFromJson(json);

@override@JsonKey(name: "full_name") final  String? fullName;
@override final  String? avatar;
@override@JsonKey(name: "birth_date") final  String? birthDate;
@override final  String? gender;
@override@JsonKey(name: "is_smoker") final  bool? isSmoker;
@override@JsonKey(name: "has_diabetes") final  bool? hasDiabetes;
@override@JsonKey(name: "has_hypertension") final  bool? hasHypertension;
@override@JsonKey(name: "is_pregnant") final  bool? isPregnant;
@override@JsonKey(name: "activity_level") final  String? activityLevel;
@override@JsonKey(name: "last_checkup_date") final  String? lastCheckupDate;

/// Create a copy of UpdateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileRequestCopyWith<_UpdateProfileRequest> get copyWith => __$UpdateProfileRequestCopyWithImpl<_UpdateProfileRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateProfileRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfileRequest&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isSmoker, isSmoker) || other.isSmoker == isSmoker)&&(identical(other.hasDiabetes, hasDiabetes) || other.hasDiabetes == hasDiabetes)&&(identical(other.hasHypertension, hasHypertension) || other.hasHypertension == hasHypertension)&&(identical(other.isPregnant, isPregnant) || other.isPregnant == isPregnant)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&(identical(other.lastCheckupDate, lastCheckupDate) || other.lastCheckupDate == lastCheckupDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,avatar,birthDate,gender,isSmoker,hasDiabetes,hasHypertension,isPregnant,activityLevel,lastCheckupDate);

@override
String toString() {
  return 'UpdateProfileRequest(fullName: $fullName, avatar: $avatar, birthDate: $birthDate, gender: $gender, isSmoker: $isSmoker, hasDiabetes: $hasDiabetes, hasHypertension: $hasHypertension, isPregnant: $isPregnant, activityLevel: $activityLevel, lastCheckupDate: $lastCheckupDate)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileRequestCopyWith<$Res> implements $UpdateProfileRequestCopyWith<$Res> {
  factory _$UpdateProfileRequestCopyWith(_UpdateProfileRequest value, $Res Function(_UpdateProfileRequest) _then) = __$UpdateProfileRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "full_name") String? fullName, String? avatar,@JsonKey(name: "birth_date") String? birthDate, String? gender,@JsonKey(name: "is_smoker") bool? isSmoker,@JsonKey(name: "has_diabetes") bool? hasDiabetes,@JsonKey(name: "has_hypertension") bool? hasHypertension,@JsonKey(name: "is_pregnant") bool? isPregnant,@JsonKey(name: "activity_level") String? activityLevel,@JsonKey(name: "last_checkup_date") String? lastCheckupDate
});




}
/// @nodoc
class __$UpdateProfileRequestCopyWithImpl<$Res>
    implements _$UpdateProfileRequestCopyWith<$Res> {
  __$UpdateProfileRequestCopyWithImpl(this._self, this._then);

  final _UpdateProfileRequest _self;
  final $Res Function(_UpdateProfileRequest) _then;

/// Create a copy of UpdateProfileRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = freezed,Object? avatar = freezed,Object? birthDate = freezed,Object? gender = freezed,Object? isSmoker = freezed,Object? hasDiabetes = freezed,Object? hasHypertension = freezed,Object? isPregnant = freezed,Object? activityLevel = freezed,Object? lastCheckupDate = freezed,}) {
  return _then(_UpdateProfileRequest(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,isSmoker: freezed == isSmoker ? _self.isSmoker : isSmoker // ignore: cast_nullable_to_non_nullable
as bool?,hasDiabetes: freezed == hasDiabetes ? _self.hasDiabetes : hasDiabetes // ignore: cast_nullable_to_non_nullable
as bool?,hasHypertension: freezed == hasHypertension ? _self.hasHypertension : hasHypertension // ignore: cast_nullable_to_non_nullable
as bool?,isPregnant: freezed == isPregnant ? _self.isPregnant : isPregnant // ignore: cast_nullable_to_non_nullable
as bool?,activityLevel: freezed == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String?,lastCheckupDate: freezed == lastCheckupDate ? _self.lastCheckupDate : lastCheckupDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
