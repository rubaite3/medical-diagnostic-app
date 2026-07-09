// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StartDiagnosisRequest {

 String get gender;@JsonKey(name: 'is_smoker') bool get isSmoker;@JsonKey(name: 'has_diabetes') bool get hasDiabetes;@JsonKey(name: 'has_hypertension') bool get hasHypertension;@JsonKey(name: 'is_pregnant') bool? get isPregnant;@JsonKey(name: 'activity_level') String get activityLevel;@JsonKey(name: 'assessment_for') String get assessmentFor;
/// Create a copy of StartDiagnosisRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartDiagnosisRequestCopyWith<StartDiagnosisRequest> get copyWith => _$StartDiagnosisRequestCopyWithImpl<StartDiagnosisRequest>(this as StartDiagnosisRequest, _$identity);

  /// Serializes this StartDiagnosisRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartDiagnosisRequest&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isSmoker, isSmoker) || other.isSmoker == isSmoker)&&(identical(other.hasDiabetes, hasDiabetes) || other.hasDiabetes == hasDiabetes)&&(identical(other.hasHypertension, hasHypertension) || other.hasHypertension == hasHypertension)&&(identical(other.isPregnant, isPregnant) || other.isPregnant == isPregnant)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&(identical(other.assessmentFor, assessmentFor) || other.assessmentFor == assessmentFor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gender,isSmoker,hasDiabetes,hasHypertension,isPregnant,activityLevel,assessmentFor);

@override
String toString() {
  return 'StartDiagnosisRequest(gender: $gender, isSmoker: $isSmoker, hasDiabetes: $hasDiabetes, hasHypertension: $hasHypertension, isPregnant: $isPregnant, activityLevel: $activityLevel, assessmentFor: $assessmentFor)';
}


}

/// @nodoc
abstract mixin class $StartDiagnosisRequestCopyWith<$Res>  {
  factory $StartDiagnosisRequestCopyWith(StartDiagnosisRequest value, $Res Function(StartDiagnosisRequest) _then) = _$StartDiagnosisRequestCopyWithImpl;
@useResult
$Res call({
 String gender,@JsonKey(name: 'is_smoker') bool isSmoker,@JsonKey(name: 'has_diabetes') bool hasDiabetes,@JsonKey(name: 'has_hypertension') bool hasHypertension,@JsonKey(name: 'is_pregnant') bool? isPregnant,@JsonKey(name: 'activity_level') String activityLevel,@JsonKey(name: 'assessment_for') String assessmentFor
});




}
/// @nodoc
class _$StartDiagnosisRequestCopyWithImpl<$Res>
    implements $StartDiagnosisRequestCopyWith<$Res> {
  _$StartDiagnosisRequestCopyWithImpl(this._self, this._then);

  final StartDiagnosisRequest _self;
  final $Res Function(StartDiagnosisRequest) _then;

/// Create a copy of StartDiagnosisRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gender = null,Object? isSmoker = null,Object? hasDiabetes = null,Object? hasHypertension = null,Object? isPregnant = freezed,Object? activityLevel = null,Object? assessmentFor = null,}) {
  return _then(StartDiagnosisRequest(
gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,isSmoker: null == isSmoker ? _self.isSmoker : isSmoker // ignore: cast_nullable_to_non_nullable
as bool,hasDiabetes: null == hasDiabetes ? _self.hasDiabetes : hasDiabetes // ignore: cast_nullable_to_non_nullable
as bool,hasHypertension: null == hasHypertension ? _self.hasHypertension : hasHypertension // ignore: cast_nullable_to_non_nullable
as bool,isPregnant: freezed == isPregnant ? _self.isPregnant : isPregnant // ignore: cast_nullable_to_non_nullable
as bool?,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String,assessmentFor: null == assessmentFor ? _self.assessmentFor : assessmentFor // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StartDiagnosisRequest].
extension StartDiagnosisRequestPatterns on StartDiagnosisRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StartDiagnosisRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StartDiagnosisRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StartDiagnosisRequest value)  $default,){
final _that = this;
switch (_that) {
case _StartDiagnosisRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StartDiagnosisRequest value)?  $default,){
final _that = this;
switch (_that) {
case _StartDiagnosisRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String gender, @JsonKey(name: 'is_smoker')  bool isSmoker, @JsonKey(name: 'has_diabetes')  bool hasDiabetes, @JsonKey(name: 'has_hypertension')  bool hasHypertension, @JsonKey(name: 'is_pregnant')  bool? isPregnant, @JsonKey(name: 'activity_level')  String activityLevel, @JsonKey(name: 'assessment_for')  String assessmentFor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartDiagnosisRequest() when $default != null:
return $default(_that.gender,_that.isSmoker,_that.hasDiabetes,_that.hasHypertension,_that.isPregnant,_that.activityLevel,_that.assessmentFor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String gender, @JsonKey(name: 'is_smoker')  bool isSmoker, @JsonKey(name: 'has_diabetes')  bool hasDiabetes, @JsonKey(name: 'has_hypertension')  bool hasHypertension, @JsonKey(name: 'is_pregnant')  bool? isPregnant, @JsonKey(name: 'activity_level')  String activityLevel, @JsonKey(name: 'assessment_for')  String assessmentFor)  $default,) {final _that = this;
switch (_that) {
case _StartDiagnosisRequest():
return $default(_that.gender,_that.isSmoker,_that.hasDiabetes,_that.hasHypertension,_that.isPregnant,_that.activityLevel,_that.assessmentFor);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String gender, @JsonKey(name: 'is_smoker')  bool isSmoker, @JsonKey(name: 'has_diabetes')  bool hasDiabetes, @JsonKey(name: 'has_hypertension')  bool hasHypertension, @JsonKey(name: 'is_pregnant')  bool? isPregnant, @JsonKey(name: 'activity_level')  String activityLevel, @JsonKey(name: 'assessment_for')  String assessmentFor)?  $default,) {final _that = this;
switch (_that) {
case _StartDiagnosisRequest() when $default != null:
return $default(_that.gender,_that.isSmoker,_that.hasDiabetes,_that.hasHypertension,_that.isPregnant,_that.activityLevel,_that.assessmentFor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StartDiagnosisRequest implements StartDiagnosisRequest {
  const _StartDiagnosisRequest({required this.gender, @JsonKey(name: 'is_smoker') required this.isSmoker, @JsonKey(name: 'has_diabetes') required this.hasDiabetes, @JsonKey(name: 'has_hypertension') required this.hasHypertension, @JsonKey(name: 'is_pregnant') this.isPregnant, @JsonKey(name: 'activity_level') required this.activityLevel, @JsonKey(name: 'assessment_for') required this.assessmentFor});
  factory _StartDiagnosisRequest.fromJson(Map<String, dynamic> json) => _$StartDiagnosisRequestFromJson(json);

@override final  String gender;
@override@JsonKey(name: 'is_smoker') final  bool isSmoker;
@override@JsonKey(name: 'has_diabetes') final  bool hasDiabetes;
@override@JsonKey(name: 'has_hypertension') final  bool hasHypertension;
@override@JsonKey(name: 'is_pregnant') final  bool? isPregnant;
@override@JsonKey(name: 'activity_level') final  String activityLevel;
@override@JsonKey(name: 'assessment_for') final  String assessmentFor;

/// Create a copy of StartDiagnosisRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartDiagnosisRequestCopyWith<_StartDiagnosisRequest> get copyWith => __$StartDiagnosisRequestCopyWithImpl<_StartDiagnosisRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StartDiagnosisRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartDiagnosisRequest&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isSmoker, isSmoker) || other.isSmoker == isSmoker)&&(identical(other.hasDiabetes, hasDiabetes) || other.hasDiabetes == hasDiabetes)&&(identical(other.hasHypertension, hasHypertension) || other.hasHypertension == hasHypertension)&&(identical(other.isPregnant, isPregnant) || other.isPregnant == isPregnant)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&(identical(other.assessmentFor, assessmentFor) || other.assessmentFor == assessmentFor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gender,isSmoker,hasDiabetes,hasHypertension,isPregnant,activityLevel,assessmentFor);

@override
String toString() {
  return 'StartDiagnosisRequest(gender: $gender, isSmoker: $isSmoker, hasDiabetes: $hasDiabetes, hasHypertension: $hasHypertension, isPregnant: $isPregnant, activityLevel: $activityLevel, assessmentFor: $assessmentFor)';
}


}

/// @nodoc
abstract mixin class _$StartDiagnosisRequestCopyWith<$Res> implements $StartDiagnosisRequestCopyWith<$Res> {
  factory _$StartDiagnosisRequestCopyWith(_StartDiagnosisRequest value, $Res Function(_StartDiagnosisRequest) _then) = __$StartDiagnosisRequestCopyWithImpl;
@override @useResult
$Res call({
 String gender,@JsonKey(name: 'is_smoker') bool isSmoker,@JsonKey(name: 'has_diabetes') bool hasDiabetes,@JsonKey(name: 'has_hypertension') bool hasHypertension,@JsonKey(name: 'is_pregnant') bool? isPregnant,@JsonKey(name: 'activity_level') String activityLevel,@JsonKey(name: 'assessment_for') String assessmentFor
});




}
/// @nodoc
class __$StartDiagnosisRequestCopyWithImpl<$Res>
    implements _$StartDiagnosisRequestCopyWith<$Res> {
  __$StartDiagnosisRequestCopyWithImpl(this._self, this._then);

  final _StartDiagnosisRequest _self;
  final $Res Function(_StartDiagnosisRequest) _then;

/// Create a copy of StartDiagnosisRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gender = null,Object? isSmoker = null,Object? hasDiabetes = null,Object? hasHypertension = null,Object? isPregnant = freezed,Object? activityLevel = null,Object? assessmentFor = null,}) {
  return _then(_StartDiagnosisRequest(
gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,isSmoker: null == isSmoker ? _self.isSmoker : isSmoker // ignore: cast_nullable_to_non_nullable
as bool,hasDiabetes: null == hasDiabetes ? _self.hasDiabetes : hasDiabetes // ignore: cast_nullable_to_non_nullable
as bool,hasHypertension: null == hasHypertension ? _self.hasHypertension : hasHypertension // ignore: cast_nullable_to_non_nullable
as bool,isPregnant: freezed == isPregnant ? _self.isPregnant : isPregnant // ignore: cast_nullable_to_non_nullable
as bool?,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String,assessmentFor: null == assessmentFor ? _self.assessmentFor : assessmentFor // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$StartDiagnosisResponse {

@JsonKey(name: 'session_id') String get sessionId;
/// Create a copy of StartDiagnosisResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartDiagnosisResponseCopyWith<StartDiagnosisResponse> get copyWith => _$StartDiagnosisResponseCopyWithImpl<StartDiagnosisResponse>(this as StartDiagnosisResponse, _$identity);

  /// Serializes this StartDiagnosisResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartDiagnosisResponse&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId);

@override
String toString() {
  return 'StartDiagnosisResponse(sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class $StartDiagnosisResponseCopyWith<$Res>  {
  factory $StartDiagnosisResponseCopyWith(StartDiagnosisResponse value, $Res Function(StartDiagnosisResponse) _then) = _$StartDiagnosisResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId
});




}
/// @nodoc
class _$StartDiagnosisResponseCopyWithImpl<$Res>
    implements $StartDiagnosisResponseCopyWith<$Res> {
  _$StartDiagnosisResponseCopyWithImpl(this._self, this._then);

  final StartDiagnosisResponse _self;
  final $Res Function(StartDiagnosisResponse) _then;

/// Create a copy of StartDiagnosisResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,}) {
  return _then(StartDiagnosisResponse(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StartDiagnosisResponse].
extension StartDiagnosisResponsePatterns on StartDiagnosisResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StartDiagnosisResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StartDiagnosisResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StartDiagnosisResponse value)  $default,){
final _that = this;
switch (_that) {
case _StartDiagnosisResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StartDiagnosisResponse value)?  $default,){
final _that = this;
switch (_that) {
case _StartDiagnosisResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartDiagnosisResponse() when $default != null:
return $default(_that.sessionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId)  $default,) {final _that = this;
switch (_that) {
case _StartDiagnosisResponse():
return $default(_that.sessionId);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'session_id')  String sessionId)?  $default,) {final _that = this;
switch (_that) {
case _StartDiagnosisResponse() when $default != null:
return $default(_that.sessionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StartDiagnosisResponse implements StartDiagnosisResponse {
  const _StartDiagnosisResponse({@JsonKey(name: 'session_id') required this.sessionId});
  factory _StartDiagnosisResponse.fromJson(Map<String, dynamic> json) => _$StartDiagnosisResponseFromJson(json);

@override@JsonKey(name: 'session_id') final  String sessionId;

/// Create a copy of StartDiagnosisResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartDiagnosisResponseCopyWith<_StartDiagnosisResponse> get copyWith => __$StartDiagnosisResponseCopyWithImpl<_StartDiagnosisResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StartDiagnosisResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartDiagnosisResponse&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId);

@override
String toString() {
  return 'StartDiagnosisResponse(sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class _$StartDiagnosisResponseCopyWith<$Res> implements $StartDiagnosisResponseCopyWith<$Res> {
  factory _$StartDiagnosisResponseCopyWith(_StartDiagnosisResponse value, $Res Function(_StartDiagnosisResponse) _then) = __$StartDiagnosisResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId
});




}
/// @nodoc
class __$StartDiagnosisResponseCopyWithImpl<$Res>
    implements _$StartDiagnosisResponseCopyWith<$Res> {
  __$StartDiagnosisResponseCopyWithImpl(this._self, this._then);

  final _StartDiagnosisResponse _self;
  final $Res Function(_StartDiagnosisResponse) _then;

/// Create a copy of StartDiagnosisResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,}) {
  return _then(_StartDiagnosisResponse(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Symptom {

 String get id; String get name; String get description;
/// Create a copy of Symptom
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SymptomCopyWith<Symptom> get copyWith => _$SymptomCopyWithImpl<Symptom>(this as Symptom, _$identity);

  /// Serializes this Symptom to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Symptom&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'Symptom(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class $SymptomCopyWith<$Res>  {
  factory $SymptomCopyWith(Symptom value, $Res Function(Symptom) _then) = _$SymptomCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description
});




}
/// @nodoc
class _$SymptomCopyWithImpl<$Res>
    implements $SymptomCopyWith<$Res> {
  _$SymptomCopyWithImpl(this._self, this._then);

  final Symptom _self;
  final $Res Function(Symptom) _then;

/// Create a copy of Symptom
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,}) {
  return _then(Symptom(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Symptom].
extension SymptomPatterns on Symptom {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Symptom value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Symptom() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Symptom value)  $default,){
final _that = this;
switch (_that) {
case _Symptom():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Symptom value)?  $default,){
final _that = this;
switch (_that) {
case _Symptom() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Symptom() when $default != null:
return $default(_that.id,_that.name,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description)  $default,) {final _that = this;
switch (_that) {
case _Symptom():
return $default(_that.id,_that.name,_that.description);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description)?  $default,) {final _that = this;
switch (_that) {
case _Symptom() when $default != null:
return $default(_that.id,_that.name,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Symptom implements Symptom {
  const _Symptom({required this.id, required this.name, required this.description});
  factory _Symptom.fromJson(Map<String, dynamic> json) => _$SymptomFromJson(json);

@override final  String id;
@override final  String name;
@override final  String description;

/// Create a copy of Symptom
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SymptomCopyWith<_Symptom> get copyWith => __$SymptomCopyWithImpl<_Symptom>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SymptomToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Symptom&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description);

@override
String toString() {
  return 'Symptom(id: $id, name: $name, description: $description)';
}


}

/// @nodoc
abstract mixin class _$SymptomCopyWith<$Res> implements $SymptomCopyWith<$Res> {
  factory _$SymptomCopyWith(_Symptom value, $Res Function(_Symptom) _then) = __$SymptomCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description
});




}
/// @nodoc
class __$SymptomCopyWithImpl<$Res>
    implements _$SymptomCopyWith<$Res> {
  __$SymptomCopyWithImpl(this._self, this._then);

  final _Symptom _self;
  final $Res Function(_Symptom) _then;

/// Create a copy of Symptom
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,}) {
  return _then(_Symptom(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$QuestionOption {

 String get id; String get label;
/// Create a copy of QuestionOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionOptionCopyWith<QuestionOption> get copyWith => _$QuestionOptionCopyWithImpl<QuestionOption>(this as QuestionOption, _$identity);

  /// Serializes this QuestionOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionOption&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label);

@override
String toString() {
  return 'QuestionOption(id: $id, label: $label)';
}


}

/// @nodoc
abstract mixin class $QuestionOptionCopyWith<$Res>  {
  factory $QuestionOptionCopyWith(QuestionOption value, $Res Function(QuestionOption) _then) = _$QuestionOptionCopyWithImpl;
@useResult
$Res call({
 String id, String label
});




}
/// @nodoc
class _$QuestionOptionCopyWithImpl<$Res>
    implements $QuestionOptionCopyWith<$Res> {
  _$QuestionOptionCopyWithImpl(this._self, this._then);

  final QuestionOption _self;
  final $Res Function(QuestionOption) _then;

/// Create a copy of QuestionOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,}) {
  return _then(QuestionOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionOption].
extension QuestionOptionPatterns on QuestionOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionOption value)  $default,){
final _that = this;
switch (_that) {
case _QuestionOption():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionOption value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionOption() when $default != null:
return $default(_that.id,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label)  $default,) {final _that = this;
switch (_that) {
case _QuestionOption():
return $default(_that.id,_that.label);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label)?  $default,) {final _that = this;
switch (_that) {
case _QuestionOption() when $default != null:
return $default(_that.id,_that.label);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionOption implements QuestionOption {
  const _QuestionOption({required this.id, required this.label});
  factory _QuestionOption.fromJson(Map<String, dynamic> json) => _$QuestionOptionFromJson(json);

@override final  String id;
@override final  String label;

/// Create a copy of QuestionOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionOptionCopyWith<_QuestionOption> get copyWith => __$QuestionOptionCopyWithImpl<_QuestionOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionOption&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label);

@override
String toString() {
  return 'QuestionOption(id: $id, label: $label)';
}


}

/// @nodoc
abstract mixin class _$QuestionOptionCopyWith<$Res> implements $QuestionOptionCopyWith<$Res> {
  factory _$QuestionOptionCopyWith(_QuestionOption value, $Res Function(_QuestionOption) _then) = __$QuestionOptionCopyWithImpl;
@override @useResult
$Res call({
 String id, String label
});




}
/// @nodoc
class __$QuestionOptionCopyWithImpl<$Res>
    implements _$QuestionOptionCopyWith<$Res> {
  __$QuestionOptionCopyWithImpl(this._self, this._then);

  final _QuestionOption _self;
  final $Res Function(_QuestionOption) _then;

/// Create a copy of QuestionOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,}) {
  return _then(_QuestionOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Question {

 String get id; String get text; String get type; List<QuestionOption> get options;
/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionCopyWith<Question> get copyWith => _$QuestionCopyWithImpl<Question>(this as Question, _$identity);

  /// Serializes this Question to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Question&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,type,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'Question(id: $id, text: $text, type: $type, options: $options)';
}


}

/// @nodoc
abstract mixin class $QuestionCopyWith<$Res>  {
  factory $QuestionCopyWith(Question value, $Res Function(Question) _then) = _$QuestionCopyWithImpl;
@useResult
$Res call({
 String id, String text, String type, List<QuestionOption> options
});




}
/// @nodoc
class _$QuestionCopyWithImpl<$Res>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._self, this._then);

  final Question _self;
  final $Res Function(Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? text = null,Object? type = null,Object? options = null,}) {
  return _then(Question(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<QuestionOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [Question].
extension QuestionPatterns on Question {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Question value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Question() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Question value)  $default,){
final _that = this;
switch (_that) {
case _Question():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Question value)?  $default,){
final _that = this;
switch (_that) {
case _Question() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String text,  String type,  List<QuestionOption> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.id,_that.text,_that.type,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String text,  String type,  List<QuestionOption> options)  $default,) {final _that = this;
switch (_that) {
case _Question():
return $default(_that.id,_that.text,_that.type,_that.options);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String text,  String type,  List<QuestionOption> options)?  $default,) {final _that = this;
switch (_that) {
case _Question() when $default != null:
return $default(_that.id,_that.text,_that.type,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Question implements Question {
  const _Question({required this.id, required this.text, required this.type, required  List<QuestionOption> options}): _options = options;
  factory _Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);

@override final  String id;
@override final  String text;
@override final  String type;
 final  List<QuestionOption> _options;
@override List<QuestionOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionCopyWith<_Question> get copyWith => __$QuestionCopyWithImpl<_Question>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Question&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,type,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'Question(id: $id, text: $text, type: $type, options: $options)';
}


}

/// @nodoc
abstract mixin class _$QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) _then) = __$QuestionCopyWithImpl;
@override @useResult
$Res call({
 String id, String text, String type, List<QuestionOption> options
});




}
/// @nodoc
class __$QuestionCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(this._self, this._then);

  final _Question _self;
  final $Res Function(_Question) _then;

/// Create a copy of Question
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? text = null,Object? type = null,Object? options = null,}) {
  return _then(_Question(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<QuestionOption>,
  ));
}


}


/// @nodoc
mixin _$SymptomAnswer {

@JsonKey(name: 'question_id') String get questionId;@JsonKey(name: 'selected_option_ids') List<String> get selectedOptionIds;
/// Create a copy of SymptomAnswer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SymptomAnswerCopyWith<SymptomAnswer> get copyWith => _$SymptomAnswerCopyWithImpl<SymptomAnswer>(this as SymptomAnswer, _$identity);

  /// Serializes this SymptomAnswer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SymptomAnswer&&(identical(other.questionId, questionId) || other.questionId == questionId)&&const DeepCollectionEquality().equals(other.selectedOptionIds, selectedOptionIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,const DeepCollectionEquality().hash(selectedOptionIds));

@override
String toString() {
  return 'SymptomAnswer(questionId: $questionId, selectedOptionIds: $selectedOptionIds)';
}


}

/// @nodoc
abstract mixin class $SymptomAnswerCopyWith<$Res>  {
  factory $SymptomAnswerCopyWith(SymptomAnswer value, $Res Function(SymptomAnswer) _then) = _$SymptomAnswerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'question_id') String questionId,@JsonKey(name: 'selected_option_ids') List<String> selectedOptionIds
});




}
/// @nodoc
class _$SymptomAnswerCopyWithImpl<$Res>
    implements $SymptomAnswerCopyWith<$Res> {
  _$SymptomAnswerCopyWithImpl(this._self, this._then);

  final SymptomAnswer _self;
  final $Res Function(SymptomAnswer) _then;

/// Create a copy of SymptomAnswer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questionId = null,Object? selectedOptionIds = null,}) {
  return _then(SymptomAnswer(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,selectedOptionIds: null == selectedOptionIds ? _self.selectedOptionIds : selectedOptionIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [SymptomAnswer].
extension SymptomAnswerPatterns on SymptomAnswer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SymptomAnswer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SymptomAnswer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SymptomAnswer value)  $default,){
final _that = this;
switch (_that) {
case _SymptomAnswer():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SymptomAnswer value)?  $default,){
final _that = this;
switch (_that) {
case _SymptomAnswer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'question_id')  String questionId, @JsonKey(name: 'selected_option_ids')  List<String> selectedOptionIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SymptomAnswer() when $default != null:
return $default(_that.questionId,_that.selectedOptionIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'question_id')  String questionId, @JsonKey(name: 'selected_option_ids')  List<String> selectedOptionIds)  $default,) {final _that = this;
switch (_that) {
case _SymptomAnswer():
return $default(_that.questionId,_that.selectedOptionIds);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'question_id')  String questionId, @JsonKey(name: 'selected_option_ids')  List<String> selectedOptionIds)?  $default,) {final _that = this;
switch (_that) {
case _SymptomAnswer() when $default != null:
return $default(_that.questionId,_that.selectedOptionIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SymptomAnswer implements SymptomAnswer {
  const _SymptomAnswer({@JsonKey(name: 'question_id') required this.questionId, @JsonKey(name: 'selected_option_ids') required  List<String> selectedOptionIds}): _selectedOptionIds = selectedOptionIds;
  factory _SymptomAnswer.fromJson(Map<String, dynamic> json) => _$SymptomAnswerFromJson(json);

@override@JsonKey(name: 'question_id') final  String questionId;
 final  List<String> _selectedOptionIds;
@override@JsonKey(name: 'selected_option_ids') List<String> get selectedOptionIds {
  if (_selectedOptionIds is EqualUnmodifiableListView) return _selectedOptionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedOptionIds);
}


/// Create a copy of SymptomAnswer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SymptomAnswerCopyWith<_SymptomAnswer> get copyWith => __$SymptomAnswerCopyWithImpl<_SymptomAnswer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SymptomAnswerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SymptomAnswer&&(identical(other.questionId, questionId) || other.questionId == questionId)&&const DeepCollectionEquality().equals(other._selectedOptionIds, _selectedOptionIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questionId,const DeepCollectionEquality().hash(_selectedOptionIds));

@override
String toString() {
  return 'SymptomAnswer(questionId: $questionId, selectedOptionIds: $selectedOptionIds)';
}


}

/// @nodoc
abstract mixin class _$SymptomAnswerCopyWith<$Res> implements $SymptomAnswerCopyWith<$Res> {
  factory _$SymptomAnswerCopyWith(_SymptomAnswer value, $Res Function(_SymptomAnswer) _then) = __$SymptomAnswerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'question_id') String questionId,@JsonKey(name: 'selected_option_ids') List<String> selectedOptionIds
});




}
/// @nodoc
class __$SymptomAnswerCopyWithImpl<$Res>
    implements _$SymptomAnswerCopyWith<$Res> {
  __$SymptomAnswerCopyWithImpl(this._self, this._then);

  final _SymptomAnswer _self;
  final $Res Function(_SymptomAnswer) _then;

/// Create a copy of SymptomAnswer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questionId = null,Object? selectedOptionIds = null,}) {
  return _then(_SymptomAnswer(
questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,selectedOptionIds: null == selectedOptionIds ? _self._selectedOptionIds : selectedOptionIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$SubmitSymptomAnswersRequest {

@JsonKey(name: 'session_id') String get sessionId;@JsonKey(name: 'symptom_id') String get symptomId; List<SymptomAnswer> get answers;
/// Create a copy of SubmitSymptomAnswersRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitSymptomAnswersRequestCopyWith<SubmitSymptomAnswersRequest> get copyWith => _$SubmitSymptomAnswersRequestCopyWithImpl<SubmitSymptomAnswersRequest>(this as SubmitSymptomAnswersRequest, _$identity);

  /// Serializes this SubmitSymptomAnswersRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitSymptomAnswersRequest&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.symptomId, symptomId) || other.symptomId == symptomId)&&const DeepCollectionEquality().equals(other.answers, answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId,symptomId,const DeepCollectionEquality().hash(answers));

@override
String toString() {
  return 'SubmitSymptomAnswersRequest(sessionId: $sessionId, symptomId: $symptomId, answers: $answers)';
}


}

/// @nodoc
abstract mixin class $SubmitSymptomAnswersRequestCopyWith<$Res>  {
  factory $SubmitSymptomAnswersRequestCopyWith(SubmitSymptomAnswersRequest value, $Res Function(SubmitSymptomAnswersRequest) _then) = _$SubmitSymptomAnswersRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'symptom_id') String symptomId, List<SymptomAnswer> answers
});




}
/// @nodoc
class _$SubmitSymptomAnswersRequestCopyWithImpl<$Res>
    implements $SubmitSymptomAnswersRequestCopyWith<$Res> {
  _$SubmitSymptomAnswersRequestCopyWithImpl(this._self, this._then);

  final SubmitSymptomAnswersRequest _self;
  final $Res Function(SubmitSymptomAnswersRequest) _then;

/// Create a copy of SubmitSymptomAnswersRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,Object? symptomId = null,Object? answers = null,}) {
  return _then(SubmitSymptomAnswersRequest(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,symptomId: null == symptomId ? _self.symptomId : symptomId // ignore: cast_nullable_to_non_nullable
as String,answers: null == answers ? _self.answers : answers // ignore: cast_nullable_to_non_nullable
as List<SymptomAnswer>,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitSymptomAnswersRequest].
extension SubmitSymptomAnswersRequestPatterns on SubmitSymptomAnswersRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitSymptomAnswersRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitSymptomAnswersRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitSymptomAnswersRequest value)  $default,){
final _that = this;
switch (_that) {
case _SubmitSymptomAnswersRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitSymptomAnswersRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitSymptomAnswersRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'symptom_id')  String symptomId,  List<SymptomAnswer> answers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitSymptomAnswersRequest() when $default != null:
return $default(_that.sessionId,_that.symptomId,_that.answers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'symptom_id')  String symptomId,  List<SymptomAnswer> answers)  $default,) {final _that = this;
switch (_that) {
case _SubmitSymptomAnswersRequest():
return $default(_that.sessionId,_that.symptomId,_that.answers);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'symptom_id')  String symptomId,  List<SymptomAnswer> answers)?  $default,) {final _that = this;
switch (_that) {
case _SubmitSymptomAnswersRequest() when $default != null:
return $default(_that.sessionId,_that.symptomId,_that.answers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubmitSymptomAnswersRequest implements SubmitSymptomAnswersRequest {
  const _SubmitSymptomAnswersRequest({@JsonKey(name: 'session_id') required this.sessionId, @JsonKey(name: 'symptom_id') required this.symptomId, required  List<SymptomAnswer> answers}): _answers = answers;
  factory _SubmitSymptomAnswersRequest.fromJson(Map<String, dynamic> json) => _$SubmitSymptomAnswersRequestFromJson(json);

@override@JsonKey(name: 'session_id') final  String sessionId;
@override@JsonKey(name: 'symptom_id') final  String symptomId;
 final  List<SymptomAnswer> _answers;
@override List<SymptomAnswer> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}


/// Create a copy of SubmitSymptomAnswersRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitSymptomAnswersRequestCopyWith<_SubmitSymptomAnswersRequest> get copyWith => __$SubmitSymptomAnswersRequestCopyWithImpl<_SubmitSymptomAnswersRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmitSymptomAnswersRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitSymptomAnswersRequest&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.symptomId, symptomId) || other.symptomId == symptomId)&&const DeepCollectionEquality().equals(other._answers, _answers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId,symptomId,const DeepCollectionEquality().hash(_answers));

@override
String toString() {
  return 'SubmitSymptomAnswersRequest(sessionId: $sessionId, symptomId: $symptomId, answers: $answers)';
}


}

/// @nodoc
abstract mixin class _$SubmitSymptomAnswersRequestCopyWith<$Res> implements $SubmitSymptomAnswersRequestCopyWith<$Res> {
  factory _$SubmitSymptomAnswersRequestCopyWith(_SubmitSymptomAnswersRequest value, $Res Function(_SubmitSymptomAnswersRequest) _then) = __$SubmitSymptomAnswersRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'symptom_id') String symptomId, List<SymptomAnswer> answers
});




}
/// @nodoc
class __$SubmitSymptomAnswersRequestCopyWithImpl<$Res>
    implements _$SubmitSymptomAnswersRequestCopyWith<$Res> {
  __$SubmitSymptomAnswersRequestCopyWithImpl(this._self, this._then);

  final _SubmitSymptomAnswersRequest _self;
  final $Res Function(_SubmitSymptomAnswersRequest) _then;

/// Create a copy of SubmitSymptomAnswersRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? symptomId = null,Object? answers = null,}) {
  return _then(_SubmitSymptomAnswersRequest(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,symptomId: null == symptomId ? _self.symptomId : symptomId // ignore: cast_nullable_to_non_nullable
as String,answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<SymptomAnswer>,
  ));
}


}


/// @nodoc
mixin _$ProbableDisease {

 String get name; double get probability;@JsonKey(name: 'color_code') String get colorCode;
/// Create a copy of ProbableDisease
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProbableDiseaseCopyWith<ProbableDisease> get copyWith => _$ProbableDiseaseCopyWithImpl<ProbableDisease>(this as ProbableDisease, _$identity);

  /// Serializes this ProbableDisease to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProbableDisease&&(identical(other.name, name) || other.name == name)&&(identical(other.probability, probability) || other.probability == probability)&&(identical(other.colorCode, colorCode) || other.colorCode == colorCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,probability,colorCode);

@override
String toString() {
  return 'ProbableDisease(name: $name, probability: $probability, colorCode: $colorCode)';
}


}

/// @nodoc
abstract mixin class $ProbableDiseaseCopyWith<$Res>  {
  factory $ProbableDiseaseCopyWith(ProbableDisease value, $Res Function(ProbableDisease) _then) = _$ProbableDiseaseCopyWithImpl;
@useResult
$Res call({
 String name, double probability,@JsonKey(name: 'color_code') String colorCode
});




}
/// @nodoc
class _$ProbableDiseaseCopyWithImpl<$Res>
    implements $ProbableDiseaseCopyWith<$Res> {
  _$ProbableDiseaseCopyWithImpl(this._self, this._then);

  final ProbableDisease _self;
  final $Res Function(ProbableDisease) _then;

/// Create a copy of ProbableDisease
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? probability = null,Object? colorCode = null,}) {
  return _then(ProbableDisease(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,probability: null == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as double,colorCode: null == colorCode ? _self.colorCode : colorCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProbableDisease].
extension ProbableDiseasePatterns on ProbableDisease {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProbableDisease value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProbableDisease() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProbableDisease value)  $default,){
final _that = this;
switch (_that) {
case _ProbableDisease():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProbableDisease value)?  $default,){
final _that = this;
switch (_that) {
case _ProbableDisease() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  double probability, @JsonKey(name: 'color_code')  String colorCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProbableDisease() when $default != null:
return $default(_that.name,_that.probability,_that.colorCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  double probability, @JsonKey(name: 'color_code')  String colorCode)  $default,) {final _that = this;
switch (_that) {
case _ProbableDisease():
return $default(_that.name,_that.probability,_that.colorCode);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  double probability, @JsonKey(name: 'color_code')  String colorCode)?  $default,) {final _that = this;
switch (_that) {
case _ProbableDisease() when $default != null:
return $default(_that.name,_that.probability,_that.colorCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProbableDisease implements ProbableDisease {
  const _ProbableDisease({required this.name, required this.probability, @JsonKey(name: 'color_code') required this.colorCode});
  factory _ProbableDisease.fromJson(Map<String, dynamic> json) => _$ProbableDiseaseFromJson(json);

@override final  String name;
@override final  double probability;
@override@JsonKey(name: 'color_code') final  String colorCode;

/// Create a copy of ProbableDisease
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProbableDiseaseCopyWith<_ProbableDisease> get copyWith => __$ProbableDiseaseCopyWithImpl<_ProbableDisease>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProbableDiseaseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProbableDisease&&(identical(other.name, name) || other.name == name)&&(identical(other.probability, probability) || other.probability == probability)&&(identical(other.colorCode, colorCode) || other.colorCode == colorCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,probability,colorCode);

@override
String toString() {
  return 'ProbableDisease(name: $name, probability: $probability, colorCode: $colorCode)';
}


}

/// @nodoc
abstract mixin class _$ProbableDiseaseCopyWith<$Res> implements $ProbableDiseaseCopyWith<$Res> {
  factory _$ProbableDiseaseCopyWith(_ProbableDisease value, $Res Function(_ProbableDisease) _then) = __$ProbableDiseaseCopyWithImpl;
@override @useResult
$Res call({
 String name, double probability,@JsonKey(name: 'color_code') String colorCode
});




}
/// @nodoc
class __$ProbableDiseaseCopyWithImpl<$Res>
    implements _$ProbableDiseaseCopyWith<$Res> {
  __$ProbableDiseaseCopyWithImpl(this._self, this._then);

  final _ProbableDisease _self;
  final $Res Function(_ProbableDisease) _then;

/// Create a copy of ProbableDisease
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? probability = null,Object? colorCode = null,}) {
  return _then(_ProbableDisease(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,probability: null == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as double,colorCode: null == colorCode ? _self.colorCode : colorCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DiagnosisSummary {

@JsonKey(name: 'probable_diseases') List<ProbableDisease> get probableDiseases;
/// Create a copy of DiagnosisSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosisSummaryCopyWith<DiagnosisSummary> get copyWith => _$DiagnosisSummaryCopyWithImpl<DiagnosisSummary>(this as DiagnosisSummary, _$identity);

  /// Serializes this DiagnosisSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiagnosisSummary&&const DeepCollectionEquality().equals(other.probableDiseases, probableDiseases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(probableDiseases));

@override
String toString() {
  return 'DiagnosisSummary(probableDiseases: $probableDiseases)';
}


}

/// @nodoc
abstract mixin class $DiagnosisSummaryCopyWith<$Res>  {
  factory $DiagnosisSummaryCopyWith(DiagnosisSummary value, $Res Function(DiagnosisSummary) _then) = _$DiagnosisSummaryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'probable_diseases') List<ProbableDisease> probableDiseases
});




}
/// @nodoc
class _$DiagnosisSummaryCopyWithImpl<$Res>
    implements $DiagnosisSummaryCopyWith<$Res> {
  _$DiagnosisSummaryCopyWithImpl(this._self, this._then);

  final DiagnosisSummary _self;
  final $Res Function(DiagnosisSummary) _then;

/// Create a copy of DiagnosisSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? probableDiseases = null,}) {
  return _then(DiagnosisSummary(
probableDiseases: null == probableDiseases ? _self.probableDiseases : probableDiseases // ignore: cast_nullable_to_non_nullable
as List<ProbableDisease>,
  ));
}

}


/// Adds pattern-matching-related methods to [DiagnosisSummary].
extension DiagnosisSummaryPatterns on DiagnosisSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiagnosisSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiagnosisSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiagnosisSummary value)  $default,){
final _that = this;
switch (_that) {
case _DiagnosisSummary():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiagnosisSummary value)?  $default,){
final _that = this;
switch (_that) {
case _DiagnosisSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'probable_diseases')  List<ProbableDisease> probableDiseases)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiagnosisSummary() when $default != null:
return $default(_that.probableDiseases);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'probable_diseases')  List<ProbableDisease> probableDiseases)  $default,) {final _that = this;
switch (_that) {
case _DiagnosisSummary():
return $default(_that.probableDiseases);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'probable_diseases')  List<ProbableDisease> probableDiseases)?  $default,) {final _that = this;
switch (_that) {
case _DiagnosisSummary() when $default != null:
return $default(_that.probableDiseases);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiagnosisSummary implements DiagnosisSummary {
  const _DiagnosisSummary({@JsonKey(name: 'probable_diseases') required  List<ProbableDisease> probableDiseases}): _probableDiseases = probableDiseases;
  factory _DiagnosisSummary.fromJson(Map<String, dynamic> json) => _$DiagnosisSummaryFromJson(json);

 final  List<ProbableDisease> _probableDiseases;
@override@JsonKey(name: 'probable_diseases') List<ProbableDisease> get probableDiseases {
  if (_probableDiseases is EqualUnmodifiableListView) return _probableDiseases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_probableDiseases);
}


/// Create a copy of DiagnosisSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosisSummaryCopyWith<_DiagnosisSummary> get copyWith => __$DiagnosisSummaryCopyWithImpl<_DiagnosisSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiagnosisSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiagnosisSummary&&const DeepCollectionEquality().equals(other._probableDiseases, _probableDiseases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_probableDiseases));

@override
String toString() {
  return 'DiagnosisSummary(probableDiseases: $probableDiseases)';
}


}

/// @nodoc
abstract mixin class _$DiagnosisSummaryCopyWith<$Res> implements $DiagnosisSummaryCopyWith<$Res> {
  factory _$DiagnosisSummaryCopyWith(_DiagnosisSummary value, $Res Function(_DiagnosisSummary) _then) = __$DiagnosisSummaryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'probable_diseases') List<ProbableDisease> probableDiseases
});




}
/// @nodoc
class __$DiagnosisSummaryCopyWithImpl<$Res>
    implements _$DiagnosisSummaryCopyWith<$Res> {
  __$DiagnosisSummaryCopyWithImpl(this._self, this._then);

  final _DiagnosisSummary _self;
  final $Res Function(_DiagnosisSummary) _then;

/// Create a copy of DiagnosisSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? probableDiseases = null,}) {
  return _then(_DiagnosisSummary(
probableDiseases: null == probableDiseases ? _self._probableDiseases : probableDiseases // ignore: cast_nullable_to_non_nullable
as List<ProbableDisease>,
  ));
}


}


/// @nodoc
mixin _$FollowUpResponse {

@JsonKey(name: 'response_type') String get responseType; Question? get question;@JsonKey(name: 'diagnosis_summary') DiagnosisSummary? get diagnosisSummary; int get total;
/// Create a copy of FollowUpResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FollowUpResponseCopyWith<FollowUpResponse> get copyWith => _$FollowUpResponseCopyWithImpl<FollowUpResponse>(this as FollowUpResponse, _$identity);

  /// Serializes this FollowUpResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowUpResponse&&(identical(other.responseType, responseType) || other.responseType == responseType)&&(identical(other.question, question) || other.question == question)&&(identical(other.diagnosisSummary, diagnosisSummary) || other.diagnosisSummary == diagnosisSummary)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,responseType,question,diagnosisSummary,total);

@override
String toString() {
  return 'FollowUpResponse(responseType: $responseType, question: $question, diagnosisSummary: $diagnosisSummary, total: $total)';
}


}

/// @nodoc
abstract mixin class $FollowUpResponseCopyWith<$Res>  {
  factory $FollowUpResponseCopyWith(FollowUpResponse value, $Res Function(FollowUpResponse) _then) = _$FollowUpResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'response_type') String responseType, Question? question,@JsonKey(name: 'diagnosis_summary') DiagnosisSummary? diagnosisSummary, int total
});


$QuestionCopyWith<$Res>? get question;$DiagnosisSummaryCopyWith<$Res>? get diagnosisSummary;

}
/// @nodoc
class _$FollowUpResponseCopyWithImpl<$Res>
    implements $FollowUpResponseCopyWith<$Res> {
  _$FollowUpResponseCopyWithImpl(this._self, this._then);

  final FollowUpResponse _self;
  final $Res Function(FollowUpResponse) _then;

/// Create a copy of FollowUpResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? responseType = null,Object? question = freezed,Object? diagnosisSummary = freezed,Object? total = null,}) {
  return _then(FollowUpResponse(
responseType: null == responseType ? _self.responseType : responseType // ignore: cast_nullable_to_non_nullable
as String,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as Question?,diagnosisSummary: freezed == diagnosisSummary ? _self.diagnosisSummary : diagnosisSummary // ignore: cast_nullable_to_non_nullable
as DiagnosisSummary?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of FollowUpResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestionCopyWith<$Res>? get question {
    if (_self.question == null) {
    return null;
  }

  return $QuestionCopyWith<$Res>(_self.question!, (value) {
    return _then(_self.copyWith(question: value));
  });
}/// Create a copy of FollowUpResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisSummaryCopyWith<$Res>? get diagnosisSummary {
    if (_self.diagnosisSummary == null) {
    return null;
  }

  return $DiagnosisSummaryCopyWith<$Res>(_self.diagnosisSummary!, (value) {
    return _then(_self.copyWith(diagnosisSummary: value));
  });
}
}


/// Adds pattern-matching-related methods to [FollowUpResponse].
extension FollowUpResponsePatterns on FollowUpResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FollowUpResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FollowUpResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FollowUpResponse value)  $default,){
final _that = this;
switch (_that) {
case _FollowUpResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FollowUpResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FollowUpResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'response_type')  String responseType,  Question? question, @JsonKey(name: 'diagnosis_summary')  DiagnosisSummary? diagnosisSummary,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FollowUpResponse() when $default != null:
return $default(_that.responseType,_that.question,_that.diagnosisSummary,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'response_type')  String responseType,  Question? question, @JsonKey(name: 'diagnosis_summary')  DiagnosisSummary? diagnosisSummary,  int total)  $default,) {final _that = this;
switch (_that) {
case _FollowUpResponse():
return $default(_that.responseType,_that.question,_that.diagnosisSummary,_that.total);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'response_type')  String responseType,  Question? question, @JsonKey(name: 'diagnosis_summary')  DiagnosisSummary? diagnosisSummary,  int total)?  $default,) {final _that = this;
switch (_that) {
case _FollowUpResponse() when $default != null:
return $default(_that.responseType,_that.question,_that.diagnosisSummary,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FollowUpResponse implements FollowUpResponse {
  const _FollowUpResponse({@JsonKey(name: 'response_type') required this.responseType, this.question, @JsonKey(name: 'diagnosis_summary') this.diagnosisSummary, required this.total});
  factory _FollowUpResponse.fromJson(Map<String, dynamic> json) => _$FollowUpResponseFromJson(json);

@override@JsonKey(name: 'response_type') final  String responseType;
@override final  Question? question;
@override@JsonKey(name: 'diagnosis_summary') final  DiagnosisSummary? diagnosisSummary;
@override final  int total;

/// Create a copy of FollowUpResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowUpResponseCopyWith<_FollowUpResponse> get copyWith => __$FollowUpResponseCopyWithImpl<_FollowUpResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FollowUpResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FollowUpResponse&&(identical(other.responseType, responseType) || other.responseType == responseType)&&(identical(other.question, question) || other.question == question)&&(identical(other.diagnosisSummary, diagnosisSummary) || other.diagnosisSummary == diagnosisSummary)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,responseType,question,diagnosisSummary,total);

@override
String toString() {
  return 'FollowUpResponse(responseType: $responseType, question: $question, diagnosisSummary: $diagnosisSummary, total: $total)';
}


}

/// @nodoc
abstract mixin class _$FollowUpResponseCopyWith<$Res> implements $FollowUpResponseCopyWith<$Res> {
  factory _$FollowUpResponseCopyWith(_FollowUpResponse value, $Res Function(_FollowUpResponse) _then) = __$FollowUpResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'response_type') String responseType, Question? question,@JsonKey(name: 'diagnosis_summary') DiagnosisSummary? diagnosisSummary, int total
});


@override $QuestionCopyWith<$Res>? get question;@override $DiagnosisSummaryCopyWith<$Res>? get diagnosisSummary;

}
/// @nodoc
class __$FollowUpResponseCopyWithImpl<$Res>
    implements _$FollowUpResponseCopyWith<$Res> {
  __$FollowUpResponseCopyWithImpl(this._self, this._then);

  final _FollowUpResponse _self;
  final $Res Function(_FollowUpResponse) _then;

/// Create a copy of FollowUpResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? responseType = null,Object? question = freezed,Object? diagnosisSummary = freezed,Object? total = null,}) {
  return _then(_FollowUpResponse(
responseType: null == responseType ? _self.responseType : responseType // ignore: cast_nullable_to_non_nullable
as String,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as Question?,diagnosisSummary: freezed == diagnosisSummary ? _self.diagnosisSummary : diagnosisSummary // ignore: cast_nullable_to_non_nullable
as DiagnosisSummary?,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of FollowUpResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestionCopyWith<$Res>? get question {
    if (_self.question == null) {
    return null;
  }

  return $QuestionCopyWith<$Res>(_self.question!, (value) {
    return _then(_self.copyWith(question: value));
  });
}/// Create a copy of FollowUpResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisSummaryCopyWith<$Res>? get diagnosisSummary {
    if (_self.diagnosisSummary == null) {
    return null;
  }

  return $DiagnosisSummaryCopyWith<$Res>(_self.diagnosisSummary!, (value) {
    return _then(_self.copyWith(diagnosisSummary: value));
  });
}
}


/// @nodoc
mixin _$SubmitFollowUpAnswerRequest {

@JsonKey(name: 'session_id') String get sessionId;@JsonKey(name: 'question_id') String get questionId;@JsonKey(name: 'selected_option_ids') List<String> get selectedOptionIds;
/// Create a copy of SubmitFollowUpAnswerRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitFollowUpAnswerRequestCopyWith<SubmitFollowUpAnswerRequest> get copyWith => _$SubmitFollowUpAnswerRequestCopyWithImpl<SubmitFollowUpAnswerRequest>(this as SubmitFollowUpAnswerRequest, _$identity);

  /// Serializes this SubmitFollowUpAnswerRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitFollowUpAnswerRequest&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&const DeepCollectionEquality().equals(other.selectedOptionIds, selectedOptionIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId,questionId,const DeepCollectionEquality().hash(selectedOptionIds));

@override
String toString() {
  return 'SubmitFollowUpAnswerRequest(sessionId: $sessionId, questionId: $questionId, selectedOptionIds: $selectedOptionIds)';
}


}

/// @nodoc
abstract mixin class $SubmitFollowUpAnswerRequestCopyWith<$Res>  {
  factory $SubmitFollowUpAnswerRequestCopyWith(SubmitFollowUpAnswerRequest value, $Res Function(SubmitFollowUpAnswerRequest) _then) = _$SubmitFollowUpAnswerRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'question_id') String questionId,@JsonKey(name: 'selected_option_ids') List<String> selectedOptionIds
});




}
/// @nodoc
class _$SubmitFollowUpAnswerRequestCopyWithImpl<$Res>
    implements $SubmitFollowUpAnswerRequestCopyWith<$Res> {
  _$SubmitFollowUpAnswerRequestCopyWithImpl(this._self, this._then);

  final SubmitFollowUpAnswerRequest _self;
  final $Res Function(SubmitFollowUpAnswerRequest) _then;

/// Create a copy of SubmitFollowUpAnswerRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,Object? questionId = null,Object? selectedOptionIds = null,}) {
  return _then(SubmitFollowUpAnswerRequest(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,selectedOptionIds: null == selectedOptionIds ? _self.selectedOptionIds : selectedOptionIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitFollowUpAnswerRequest].
extension SubmitFollowUpAnswerRequestPatterns on SubmitFollowUpAnswerRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitFollowUpAnswerRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitFollowUpAnswerRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitFollowUpAnswerRequest value)  $default,){
final _that = this;
switch (_that) {
case _SubmitFollowUpAnswerRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitFollowUpAnswerRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitFollowUpAnswerRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'question_id')  String questionId, @JsonKey(name: 'selected_option_ids')  List<String> selectedOptionIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitFollowUpAnswerRequest() when $default != null:
return $default(_that.sessionId,_that.questionId,_that.selectedOptionIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'question_id')  String questionId, @JsonKey(name: 'selected_option_ids')  List<String> selectedOptionIds)  $default,) {final _that = this;
switch (_that) {
case _SubmitFollowUpAnswerRequest():
return $default(_that.sessionId,_that.questionId,_that.selectedOptionIds);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'question_id')  String questionId, @JsonKey(name: 'selected_option_ids')  List<String> selectedOptionIds)?  $default,) {final _that = this;
switch (_that) {
case _SubmitFollowUpAnswerRequest() when $default != null:
return $default(_that.sessionId,_that.questionId,_that.selectedOptionIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubmitFollowUpAnswerRequest implements SubmitFollowUpAnswerRequest {
  const _SubmitFollowUpAnswerRequest({@JsonKey(name: 'session_id') required this.sessionId, @JsonKey(name: 'question_id') required this.questionId, @JsonKey(name: 'selected_option_ids') required  List<String> selectedOptionIds}): _selectedOptionIds = selectedOptionIds;
  factory _SubmitFollowUpAnswerRequest.fromJson(Map<String, dynamic> json) => _$SubmitFollowUpAnswerRequestFromJson(json);

@override@JsonKey(name: 'session_id') final  String sessionId;
@override@JsonKey(name: 'question_id') final  String questionId;
 final  List<String> _selectedOptionIds;
@override@JsonKey(name: 'selected_option_ids') List<String> get selectedOptionIds {
  if (_selectedOptionIds is EqualUnmodifiableListView) return _selectedOptionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedOptionIds);
}


/// Create a copy of SubmitFollowUpAnswerRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitFollowUpAnswerRequestCopyWith<_SubmitFollowUpAnswerRequest> get copyWith => __$SubmitFollowUpAnswerRequestCopyWithImpl<_SubmitFollowUpAnswerRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmitFollowUpAnswerRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitFollowUpAnswerRequest&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&const DeepCollectionEquality().equals(other._selectedOptionIds, _selectedOptionIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId,questionId,const DeepCollectionEquality().hash(_selectedOptionIds));

@override
String toString() {
  return 'SubmitFollowUpAnswerRequest(sessionId: $sessionId, questionId: $questionId, selectedOptionIds: $selectedOptionIds)';
}


}

/// @nodoc
abstract mixin class _$SubmitFollowUpAnswerRequestCopyWith<$Res> implements $SubmitFollowUpAnswerRequestCopyWith<$Res> {
  factory _$SubmitFollowUpAnswerRequestCopyWith(_SubmitFollowUpAnswerRequest value, $Res Function(_SubmitFollowUpAnswerRequest) _then) = __$SubmitFollowUpAnswerRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'question_id') String questionId,@JsonKey(name: 'selected_option_ids') List<String> selectedOptionIds
});




}
/// @nodoc
class __$SubmitFollowUpAnswerRequestCopyWithImpl<$Res>
    implements _$SubmitFollowUpAnswerRequestCopyWith<$Res> {
  __$SubmitFollowUpAnswerRequestCopyWithImpl(this._self, this._then);

  final _SubmitFollowUpAnswerRequest _self;
  final $Res Function(_SubmitFollowUpAnswerRequest) _then;

/// Create a copy of SubmitFollowUpAnswerRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? questionId = null,Object? selectedOptionIds = null,}) {
  return _then(_SubmitFollowUpAnswerRequest(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,selectedOptionIds: null == selectedOptionIds ? _self._selectedOptionIds : selectedOptionIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
