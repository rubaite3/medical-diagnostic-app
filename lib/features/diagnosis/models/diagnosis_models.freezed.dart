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

 String get gender;@JsonKey(name: 'is_smoker') bool get isSmoker;@JsonKey(name: 'has_diabetes') bool get hasDiabetes;@JsonKey(name: 'has_hypertension') bool get hasHypertension;@JsonKey(name: 'is_pregnant') bool? get isPregnant;@JsonKey(name: 'activity_level') String get activityLevel;@JsonKey(name: 'assessment_for') String get assessmentFor;@JsonKey(name: 'is_alcoholic') bool? get isAlcoholic;@JsonKey(name: 'patient_job') String? get patientJob;@JsonKey(name: 'birth_date') String? get birthDate;@JsonKey(name: 'blood_type') String? get bloodType;@JsonKey(name: 'model_name') String? get modelName;
/// Create a copy of StartDiagnosisRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartDiagnosisRequestCopyWith<StartDiagnosisRequest> get copyWith => _$StartDiagnosisRequestCopyWithImpl<StartDiagnosisRequest>(this as StartDiagnosisRequest, _$identity);

  /// Serializes this StartDiagnosisRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartDiagnosisRequest&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isSmoker, isSmoker) || other.isSmoker == isSmoker)&&(identical(other.hasDiabetes, hasDiabetes) || other.hasDiabetes == hasDiabetes)&&(identical(other.hasHypertension, hasHypertension) || other.hasHypertension == hasHypertension)&&(identical(other.isPregnant, isPregnant) || other.isPregnant == isPregnant)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&(identical(other.assessmentFor, assessmentFor) || other.assessmentFor == assessmentFor)&&(identical(other.isAlcoholic, isAlcoholic) || other.isAlcoholic == isAlcoholic)&&(identical(other.patientJob, patientJob) || other.patientJob == patientJob)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.bloodType, bloodType) || other.bloodType == bloodType)&&(identical(other.modelName, modelName) || other.modelName == modelName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gender,isSmoker,hasDiabetes,hasHypertension,isPregnant,activityLevel,assessmentFor,isAlcoholic,patientJob,birthDate,bloodType,modelName);

@override
String toString() {
  return 'StartDiagnosisRequest(gender: $gender, isSmoker: $isSmoker, hasDiabetes: $hasDiabetes, hasHypertension: $hasHypertension, isPregnant: $isPregnant, activityLevel: $activityLevel, assessmentFor: $assessmentFor, isAlcoholic: $isAlcoholic, patientJob: $patientJob, birthDate: $birthDate, bloodType: $bloodType, modelName: $modelName)';
}


}

/// @nodoc
abstract mixin class $StartDiagnosisRequestCopyWith<$Res>  {
  factory $StartDiagnosisRequestCopyWith(StartDiagnosisRequest value, $Res Function(StartDiagnosisRequest) _then) = _$StartDiagnosisRequestCopyWithImpl;
@useResult
$Res call({
 String gender,@JsonKey(name: 'is_smoker') bool isSmoker,@JsonKey(name: 'has_diabetes') bool hasDiabetes,@JsonKey(name: 'has_hypertension') bool hasHypertension,@JsonKey(name: 'is_pregnant') bool? isPregnant,@JsonKey(name: 'activity_level') String activityLevel,@JsonKey(name: 'assessment_for') String assessmentFor,@JsonKey(name: 'is_alcoholic') bool? isAlcoholic,@JsonKey(name: 'patient_job') String? patientJob,@JsonKey(name: 'birth_date') String? birthDate,@JsonKey(name: 'blood_type') String? bloodType,@JsonKey(name: 'model_name') String? modelName
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
@pragma('vm:prefer-inline') @override $Res call({Object? gender = null,Object? isSmoker = null,Object? hasDiabetes = null,Object? hasHypertension = null,Object? isPregnant = freezed,Object? activityLevel = null,Object? assessmentFor = null,Object? isAlcoholic = freezed,Object? patientJob = freezed,Object? birthDate = freezed,Object? bloodType = freezed,Object? modelName = freezed,}) {
  return _then(StartDiagnosisRequest(
gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,isSmoker: null == isSmoker ? _self.isSmoker : isSmoker // ignore: cast_nullable_to_non_nullable
as bool,hasDiabetes: null == hasDiabetes ? _self.hasDiabetes : hasDiabetes // ignore: cast_nullable_to_non_nullable
as bool,hasHypertension: null == hasHypertension ? _self.hasHypertension : hasHypertension // ignore: cast_nullable_to_non_nullable
as bool,isPregnant: freezed == isPregnant ? _self.isPregnant : isPregnant // ignore: cast_nullable_to_non_nullable
as bool?,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String,assessmentFor: null == assessmentFor ? _self.assessmentFor : assessmentFor // ignore: cast_nullable_to_non_nullable
as String,isAlcoholic: freezed == isAlcoholic ? _self.isAlcoholic : isAlcoholic // ignore: cast_nullable_to_non_nullable
as bool?,patientJob: freezed == patientJob ? _self.patientJob : patientJob // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,bloodType: freezed == bloodType ? _self.bloodType : bloodType // ignore: cast_nullable_to_non_nullable
as String?,modelName: freezed == modelName ? _self.modelName : modelName // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String gender, @JsonKey(name: 'is_smoker')  bool isSmoker, @JsonKey(name: 'has_diabetes')  bool hasDiabetes, @JsonKey(name: 'has_hypertension')  bool hasHypertension, @JsonKey(name: 'is_pregnant')  bool? isPregnant, @JsonKey(name: 'activity_level')  String activityLevel, @JsonKey(name: 'assessment_for')  String assessmentFor, @JsonKey(name: 'is_alcoholic')  bool? isAlcoholic, @JsonKey(name: 'patient_job')  String? patientJob, @JsonKey(name: 'birth_date')  String? birthDate, @JsonKey(name: 'blood_type')  String? bloodType, @JsonKey(name: 'model_name')  String? modelName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartDiagnosisRequest() when $default != null:
return $default(_that.gender,_that.isSmoker,_that.hasDiabetes,_that.hasHypertension,_that.isPregnant,_that.activityLevel,_that.assessmentFor,_that.isAlcoholic,_that.patientJob,_that.birthDate,_that.bloodType,_that.modelName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String gender, @JsonKey(name: 'is_smoker')  bool isSmoker, @JsonKey(name: 'has_diabetes')  bool hasDiabetes, @JsonKey(name: 'has_hypertension')  bool hasHypertension, @JsonKey(name: 'is_pregnant')  bool? isPregnant, @JsonKey(name: 'activity_level')  String activityLevel, @JsonKey(name: 'assessment_for')  String assessmentFor, @JsonKey(name: 'is_alcoholic')  bool? isAlcoholic, @JsonKey(name: 'patient_job')  String? patientJob, @JsonKey(name: 'birth_date')  String? birthDate, @JsonKey(name: 'blood_type')  String? bloodType, @JsonKey(name: 'model_name')  String? modelName)  $default,) {final _that = this;
switch (_that) {
case _StartDiagnosisRequest():
return $default(_that.gender,_that.isSmoker,_that.hasDiabetes,_that.hasHypertension,_that.isPregnant,_that.activityLevel,_that.assessmentFor,_that.isAlcoholic,_that.patientJob,_that.birthDate,_that.bloodType,_that.modelName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String gender, @JsonKey(name: 'is_smoker')  bool isSmoker, @JsonKey(name: 'has_diabetes')  bool hasDiabetes, @JsonKey(name: 'has_hypertension')  bool hasHypertension, @JsonKey(name: 'is_pregnant')  bool? isPregnant, @JsonKey(name: 'activity_level')  String activityLevel, @JsonKey(name: 'assessment_for')  String assessmentFor, @JsonKey(name: 'is_alcoholic')  bool? isAlcoholic, @JsonKey(name: 'patient_job')  String? patientJob, @JsonKey(name: 'birth_date')  String? birthDate, @JsonKey(name: 'blood_type')  String? bloodType, @JsonKey(name: 'model_name')  String? modelName)?  $default,) {final _that = this;
switch (_that) {
case _StartDiagnosisRequest() when $default != null:
return $default(_that.gender,_that.isSmoker,_that.hasDiabetes,_that.hasHypertension,_that.isPregnant,_that.activityLevel,_that.assessmentFor,_that.isAlcoholic,_that.patientJob,_that.birthDate,_that.bloodType,_that.modelName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StartDiagnosisRequest implements StartDiagnosisRequest {
  const _StartDiagnosisRequest({required this.gender, @JsonKey(name: 'is_smoker') required this.isSmoker, @JsonKey(name: 'has_diabetes') required this.hasDiabetes, @JsonKey(name: 'has_hypertension') required this.hasHypertension, @JsonKey(name: 'is_pregnant') this.isPregnant, @JsonKey(name: 'activity_level') required this.activityLevel, @JsonKey(name: 'assessment_for') this.assessmentFor = "myself", @JsonKey(name: 'is_alcoholic') this.isAlcoholic, @JsonKey(name: 'patient_job') this.patientJob, @JsonKey(name: 'birth_date') this.birthDate, @JsonKey(name: 'blood_type') this.bloodType, @JsonKey(name: 'model_name') this.modelName});
  factory _StartDiagnosisRequest.fromJson(Map<String, dynamic> json) => _$StartDiagnosisRequestFromJson(json);

@override final  String gender;
@override@JsonKey(name: 'is_smoker') final  bool isSmoker;
@override@JsonKey(name: 'has_diabetes') final  bool hasDiabetes;
@override@JsonKey(name: 'has_hypertension') final  bool hasHypertension;
@override@JsonKey(name: 'is_pregnant') final  bool? isPregnant;
@override@JsonKey(name: 'activity_level') final  String activityLevel;
@override@JsonKey(name: 'assessment_for') final  String assessmentFor;
@override@JsonKey(name: 'is_alcoholic') final  bool? isAlcoholic;
@override@JsonKey(name: 'patient_job') final  String? patientJob;
@override@JsonKey(name: 'birth_date') final  String? birthDate;
@override@JsonKey(name: 'blood_type') final  String? bloodType;
@override@JsonKey(name: 'model_name') final  String? modelName;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartDiagnosisRequest&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isSmoker, isSmoker) || other.isSmoker == isSmoker)&&(identical(other.hasDiabetes, hasDiabetes) || other.hasDiabetes == hasDiabetes)&&(identical(other.hasHypertension, hasHypertension) || other.hasHypertension == hasHypertension)&&(identical(other.isPregnant, isPregnant) || other.isPregnant == isPregnant)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&(identical(other.assessmentFor, assessmentFor) || other.assessmentFor == assessmentFor)&&(identical(other.isAlcoholic, isAlcoholic) || other.isAlcoholic == isAlcoholic)&&(identical(other.patientJob, patientJob) || other.patientJob == patientJob)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.bloodType, bloodType) || other.bloodType == bloodType)&&(identical(other.modelName, modelName) || other.modelName == modelName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gender,isSmoker,hasDiabetes,hasHypertension,isPregnant,activityLevel,assessmentFor,isAlcoholic,patientJob,birthDate,bloodType,modelName);

@override
String toString() {
  return 'StartDiagnosisRequest(gender: $gender, isSmoker: $isSmoker, hasDiabetes: $hasDiabetes, hasHypertension: $hasHypertension, isPregnant: $isPregnant, activityLevel: $activityLevel, assessmentFor: $assessmentFor, isAlcoholic: $isAlcoholic, patientJob: $patientJob, birthDate: $birthDate, bloodType: $bloodType, modelName: $modelName)';
}


}

/// @nodoc
abstract mixin class _$StartDiagnosisRequestCopyWith<$Res> implements $StartDiagnosisRequestCopyWith<$Res> {
  factory _$StartDiagnosisRequestCopyWith(_StartDiagnosisRequest value, $Res Function(_StartDiagnosisRequest) _then) = __$StartDiagnosisRequestCopyWithImpl;
@override @useResult
$Res call({
 String gender,@JsonKey(name: 'is_smoker') bool isSmoker,@JsonKey(name: 'has_diabetes') bool hasDiabetes,@JsonKey(name: 'has_hypertension') bool hasHypertension,@JsonKey(name: 'is_pregnant') bool? isPregnant,@JsonKey(name: 'activity_level') String activityLevel,@JsonKey(name: 'assessment_for') String assessmentFor,@JsonKey(name: 'is_alcoholic') bool? isAlcoholic,@JsonKey(name: 'patient_job') String? patientJob,@JsonKey(name: 'birth_date') String? birthDate,@JsonKey(name: 'blood_type') String? bloodType,@JsonKey(name: 'model_name') String? modelName
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
@override @pragma('vm:prefer-inline') $Res call({Object? gender = null,Object? isSmoker = null,Object? hasDiabetes = null,Object? hasHypertension = null,Object? isPregnant = freezed,Object? activityLevel = null,Object? assessmentFor = null,Object? isAlcoholic = freezed,Object? patientJob = freezed,Object? birthDate = freezed,Object? bloodType = freezed,Object? modelName = freezed,}) {
  return _then(_StartDiagnosisRequest(
gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,isSmoker: null == isSmoker ? _self.isSmoker : isSmoker // ignore: cast_nullable_to_non_nullable
as bool,hasDiabetes: null == hasDiabetes ? _self.hasDiabetes : hasDiabetes // ignore: cast_nullable_to_non_nullable
as bool,hasHypertension: null == hasHypertension ? _self.hasHypertension : hasHypertension // ignore: cast_nullable_to_non_nullable
as bool,isPregnant: freezed == isPregnant ? _self.isPregnant : isPregnant // ignore: cast_nullable_to_non_nullable
as bool?,activityLevel: null == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String,assessmentFor: null == assessmentFor ? _self.assessmentFor : assessmentFor // ignore: cast_nullable_to_non_nullable
as String,isAlcoholic: freezed == isAlcoholic ? _self.isAlcoholic : isAlcoholic // ignore: cast_nullable_to_non_nullable
as bool?,patientJob: freezed == patientJob ? _self.patientJob : patientJob // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String?,bloodType: freezed == bloodType ? _self.bloodType : bloodType // ignore: cast_nullable_to_non_nullable
as String?,modelName: freezed == modelName ? _self.modelName : modelName // ignore: cast_nullable_to_non_nullable
as String?,
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

 int? get id;@JsonKey(name: "name_en") String? get nameEn;@JsonKey(name: "name_local") String? get nameLocal; String? get summary; String? get type;
/// Create a copy of Symptom
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SymptomCopyWith<Symptom> get copyWith => _$SymptomCopyWithImpl<Symptom>(this as Symptom, _$identity);

  /// Serializes this Symptom to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Symptom&&(identical(other.id, id) || other.id == id)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameLocal, nameLocal) || other.nameLocal == nameLocal)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameEn,nameLocal,summary,type);

@override
String toString() {
  return 'Symptom(id: $id, nameEn: $nameEn, nameLocal: $nameLocal, summary: $summary, type: $type)';
}


}

/// @nodoc
abstract mixin class $SymptomCopyWith<$Res>  {
  factory $SymptomCopyWith(Symptom value, $Res Function(Symptom) _then) = _$SymptomCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: "name_en") String? nameEn,@JsonKey(name: "name_local") String? nameLocal, String? summary, String? type
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? nameEn = freezed,Object? nameLocal = freezed,Object? summary = freezed,Object? type = freezed,}) {
  return _then(Symptom(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,nameLocal: freezed == nameLocal ? _self.nameLocal : nameLocal // ignore: cast_nullable_to_non_nullable
as String?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: "name_en")  String? nameEn, @JsonKey(name: "name_local")  String? nameLocal,  String? summary,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Symptom() when $default != null:
return $default(_that.id,_that.nameEn,_that.nameLocal,_that.summary,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: "name_en")  String? nameEn, @JsonKey(name: "name_local")  String? nameLocal,  String? summary,  String? type)  $default,) {final _that = this;
switch (_that) {
case _Symptom():
return $default(_that.id,_that.nameEn,_that.nameLocal,_that.summary,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: "name_en")  String? nameEn, @JsonKey(name: "name_local")  String? nameLocal,  String? summary,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _Symptom() when $default != null:
return $default(_that.id,_that.nameEn,_that.nameLocal,_that.summary,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Symptom implements Symptom {
  const _Symptom({this.id, @JsonKey(name: "name_en") this.nameEn, @JsonKey(name: "name_local") this.nameLocal, this.summary, this.type});
  factory _Symptom.fromJson(Map<String, dynamic> json) => _$SymptomFromJson(json);

@override final  int? id;
@override@JsonKey(name: "name_en") final  String? nameEn;
@override@JsonKey(name: "name_local") final  String? nameLocal;
@override final  String? summary;
@override final  String? type;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Symptom&&(identical(other.id, id) || other.id == id)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameLocal, nameLocal) || other.nameLocal == nameLocal)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameEn,nameLocal,summary,type);

@override
String toString() {
  return 'Symptom(id: $id, nameEn: $nameEn, nameLocal: $nameLocal, summary: $summary, type: $type)';
}


}

/// @nodoc
abstract mixin class _$SymptomCopyWith<$Res> implements $SymptomCopyWith<$Res> {
  factory _$SymptomCopyWith(_Symptom value, $Res Function(_Symptom) _then) = __$SymptomCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: "name_en") String? nameEn,@JsonKey(name: "name_local") String? nameLocal, String? summary, String? type
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? nameEn = freezed,Object? nameLocal = freezed,Object? summary = freezed,Object? type = freezed,}) {
  return _then(_Symptom(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,nameLocal: freezed == nameLocal ? _self.nameLocal : nameLocal // ignore: cast_nullable_to_non_nullable
as String?,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
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
mixin _$SelectSymptomRequest {

 String get name;@JsonKey(name: "session_id") String get sessionId;
/// Create a copy of SelectSymptomRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectSymptomRequestCopyWith<SelectSymptomRequest> get copyWith => _$SelectSymptomRequestCopyWithImpl<SelectSymptomRequest>(this as SelectSymptomRequest, _$identity);

  /// Serializes this SelectSymptomRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectSymptomRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sessionId);

@override
String toString() {
  return 'SelectSymptomRequest(name: $name, sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class $SelectSymptomRequestCopyWith<$Res>  {
  factory $SelectSymptomRequestCopyWith(SelectSymptomRequest value, $Res Function(SelectSymptomRequest) _then) = _$SelectSymptomRequestCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: "session_id") String sessionId
});




}
/// @nodoc
class _$SelectSymptomRequestCopyWithImpl<$Res>
    implements $SelectSymptomRequestCopyWith<$Res> {
  _$SelectSymptomRequestCopyWithImpl(this._self, this._then);

  final SelectSymptomRequest _self;
  final $Res Function(SelectSymptomRequest) _then;

/// Create a copy of SelectSymptomRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? sessionId = null,}) {
  return _then(SelectSymptomRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SelectSymptomRequest].
extension SelectSymptomRequestPatterns on SelectSymptomRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SelectSymptomRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SelectSymptomRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SelectSymptomRequest value)  $default,){
final _that = this;
switch (_that) {
case _SelectSymptomRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SelectSymptomRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SelectSymptomRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: "session_id")  String sessionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SelectSymptomRequest() when $default != null:
return $default(_that.name,_that.sessionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: "session_id")  String sessionId)  $default,) {final _that = this;
switch (_that) {
case _SelectSymptomRequest():
return $default(_that.name,_that.sessionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: "session_id")  String sessionId)?  $default,) {final _that = this;
switch (_that) {
case _SelectSymptomRequest() when $default != null:
return $default(_that.name,_that.sessionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SelectSymptomRequest implements SelectSymptomRequest {
  const _SelectSymptomRequest({required this.name, @JsonKey(name: "session_id") required this.sessionId});
  factory _SelectSymptomRequest.fromJson(Map<String, dynamic> json) => _$SelectSymptomRequestFromJson(json);

@override final  String name;
@override@JsonKey(name: "session_id") final  String sessionId;

/// Create a copy of SelectSymptomRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectSymptomRequestCopyWith<_SelectSymptomRequest> get copyWith => __$SelectSymptomRequestCopyWithImpl<_SelectSymptomRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SelectSymptomRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectSymptomRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sessionId);

@override
String toString() {
  return 'SelectSymptomRequest(name: $name, sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class _$SelectSymptomRequestCopyWith<$Res> implements $SelectSymptomRequestCopyWith<$Res> {
  factory _$SelectSymptomRequestCopyWith(_SelectSymptomRequest value, $Res Function(_SelectSymptomRequest) _then) = __$SelectSymptomRequestCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: "session_id") String sessionId
});




}
/// @nodoc
class __$SelectSymptomRequestCopyWithImpl<$Res>
    implements _$SelectSymptomRequestCopyWith<$Res> {
  __$SelectSymptomRequestCopyWithImpl(this._self, this._then);

  final _SelectSymptomRequest _self;
  final $Res Function(_SelectSymptomRequest) _then;

/// Create a copy of SelectSymptomRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? sessionId = null,}) {
  return _then(_SelectSymptomRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProbableDisease {

@JsonKey(name: "disease_name") String? get diseaseName;@JsonKey(name: "disease_name_local") String? get diseaseNameLocal; double? get probability; String? get confidence; String? get specialist; String? get advice;
/// Create a copy of ProbableDisease
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProbableDiseaseCopyWith<ProbableDisease> get copyWith => _$ProbableDiseaseCopyWithImpl<ProbableDisease>(this as ProbableDisease, _$identity);

  /// Serializes this ProbableDisease to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProbableDisease&&(identical(other.diseaseName, diseaseName) || other.diseaseName == diseaseName)&&(identical(other.diseaseNameLocal, diseaseNameLocal) || other.diseaseNameLocal == diseaseNameLocal)&&(identical(other.probability, probability) || other.probability == probability)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.specialist, specialist) || other.specialist == specialist)&&(identical(other.advice, advice) || other.advice == advice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,diseaseName,diseaseNameLocal,probability,confidence,specialist,advice);

@override
String toString() {
  return 'ProbableDisease(diseaseName: $diseaseName, diseaseNameLocal: $diseaseNameLocal, probability: $probability, confidence: $confidence, specialist: $specialist, advice: $advice)';
}


}

/// @nodoc
abstract mixin class $ProbableDiseaseCopyWith<$Res>  {
  factory $ProbableDiseaseCopyWith(ProbableDisease value, $Res Function(ProbableDisease) _then) = _$ProbableDiseaseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "disease_name") String? diseaseName,@JsonKey(name: "disease_name_local") String? diseaseNameLocal, double? probability, String? confidence, String? specialist, String? advice
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
@pragma('vm:prefer-inline') @override $Res call({Object? diseaseName = freezed,Object? diseaseNameLocal = freezed,Object? probability = freezed,Object? confidence = freezed,Object? specialist = freezed,Object? advice = freezed,}) {
  return _then(ProbableDisease(
diseaseName: freezed == diseaseName ? _self.diseaseName : diseaseName // ignore: cast_nullable_to_non_nullable
as String?,diseaseNameLocal: freezed == diseaseNameLocal ? _self.diseaseNameLocal : diseaseNameLocal // ignore: cast_nullable_to_non_nullable
as String?,probability: freezed == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as double?,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as String?,specialist: freezed == specialist ? _self.specialist : specialist // ignore: cast_nullable_to_non_nullable
as String?,advice: freezed == advice ? _self.advice : advice // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "disease_name")  String? diseaseName, @JsonKey(name: "disease_name_local")  String? diseaseNameLocal,  double? probability,  String? confidence,  String? specialist,  String? advice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProbableDisease() when $default != null:
return $default(_that.diseaseName,_that.diseaseNameLocal,_that.probability,_that.confidence,_that.specialist,_that.advice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "disease_name")  String? diseaseName, @JsonKey(name: "disease_name_local")  String? diseaseNameLocal,  double? probability,  String? confidence,  String? specialist,  String? advice)  $default,) {final _that = this;
switch (_that) {
case _ProbableDisease():
return $default(_that.diseaseName,_that.diseaseNameLocal,_that.probability,_that.confidence,_that.specialist,_that.advice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "disease_name")  String? diseaseName, @JsonKey(name: "disease_name_local")  String? diseaseNameLocal,  double? probability,  String? confidence,  String? specialist,  String? advice)?  $default,) {final _that = this;
switch (_that) {
case _ProbableDisease() when $default != null:
return $default(_that.diseaseName,_that.diseaseNameLocal,_that.probability,_that.confidence,_that.specialist,_that.advice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProbableDisease implements ProbableDisease {
  const _ProbableDisease({@JsonKey(name: "disease_name") this.diseaseName, @JsonKey(name: "disease_name_local") this.diseaseNameLocal, this.probability, this.confidence, this.specialist, this.advice});
  factory _ProbableDisease.fromJson(Map<String, dynamic> json) => _$ProbableDiseaseFromJson(json);

@override@JsonKey(name: "disease_name") final  String? diseaseName;
@override@JsonKey(name: "disease_name_local") final  String? diseaseNameLocal;
@override final  double? probability;
@override final  String? confidence;
@override final  String? specialist;
@override final  String? advice;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProbableDisease&&(identical(other.diseaseName, diseaseName) || other.diseaseName == diseaseName)&&(identical(other.diseaseNameLocal, diseaseNameLocal) || other.diseaseNameLocal == diseaseNameLocal)&&(identical(other.probability, probability) || other.probability == probability)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.specialist, specialist) || other.specialist == specialist)&&(identical(other.advice, advice) || other.advice == advice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,diseaseName,diseaseNameLocal,probability,confidence,specialist,advice);

@override
String toString() {
  return 'ProbableDisease(diseaseName: $diseaseName, diseaseNameLocal: $diseaseNameLocal, probability: $probability, confidence: $confidence, specialist: $specialist, advice: $advice)';
}


}

/// @nodoc
abstract mixin class _$ProbableDiseaseCopyWith<$Res> implements $ProbableDiseaseCopyWith<$Res> {
  factory _$ProbableDiseaseCopyWith(_ProbableDisease value, $Res Function(_ProbableDisease) _then) = __$ProbableDiseaseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "disease_name") String? diseaseName,@JsonKey(name: "disease_name_local") String? diseaseNameLocal, double? probability, String? confidence, String? specialist, String? advice
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
@override @pragma('vm:prefer-inline') $Res call({Object? diseaseName = freezed,Object? diseaseNameLocal = freezed,Object? probability = freezed,Object? confidence = freezed,Object? specialist = freezed,Object? advice = freezed,}) {
  return _then(_ProbableDisease(
diseaseName: freezed == diseaseName ? _self.diseaseName : diseaseName // ignore: cast_nullable_to_non_nullable
as String?,diseaseNameLocal: freezed == diseaseNameLocal ? _self.diseaseNameLocal : diseaseNameLocal // ignore: cast_nullable_to_non_nullable
as String?,probability: freezed == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as double?,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as String?,specialist: freezed == specialist ? _self.specialist : specialist // ignore: cast_nullable_to_non_nullable
as String?,advice: freezed == advice ? _self.advice : advice // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DiagnosisSummary {

 List<ProbableDisease> get diagnoses;
/// Create a copy of DiagnosisSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosisSummaryCopyWith<DiagnosisSummary> get copyWith => _$DiagnosisSummaryCopyWithImpl<DiagnosisSummary>(this as DiagnosisSummary, _$identity);

  /// Serializes this DiagnosisSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiagnosisSummary&&const DeepCollectionEquality().equals(other.diagnoses, diagnoses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(diagnoses));

@override
String toString() {
  return 'DiagnosisSummary(diagnoses: $diagnoses)';
}


}

/// @nodoc
abstract mixin class $DiagnosisSummaryCopyWith<$Res>  {
  factory $DiagnosisSummaryCopyWith(DiagnosisSummary value, $Res Function(DiagnosisSummary) _then) = _$DiagnosisSummaryCopyWithImpl;
@useResult
$Res call({
 List<ProbableDisease> diagnoses
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
@pragma('vm:prefer-inline') @override $Res call({Object? diagnoses = null,}) {
  return _then(DiagnosisSummary(
diagnoses: null == diagnoses ? _self.diagnoses : diagnoses // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProbableDisease> diagnoses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiagnosisSummary() when $default != null:
return $default(_that.diagnoses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProbableDisease> diagnoses)  $default,) {final _that = this;
switch (_that) {
case _DiagnosisSummary():
return $default(_that.diagnoses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProbableDisease> diagnoses)?  $default,) {final _that = this;
switch (_that) {
case _DiagnosisSummary() when $default != null:
return $default(_that.diagnoses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiagnosisSummary implements DiagnosisSummary {
  const _DiagnosisSummary({required  List<ProbableDisease> diagnoses}): _diagnoses = diagnoses;
  factory _DiagnosisSummary.fromJson(Map<String, dynamic> json) => _$DiagnosisSummaryFromJson(json);

 final  List<ProbableDisease> _diagnoses;
@override List<ProbableDisease> get diagnoses {
  if (_diagnoses is EqualUnmodifiableListView) return _diagnoses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_diagnoses);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiagnosisSummary&&const DeepCollectionEquality().equals(other._diagnoses, _diagnoses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_diagnoses));

@override
String toString() {
  return 'DiagnosisSummary(diagnoses: $diagnoses)';
}


}

/// @nodoc
abstract mixin class _$DiagnosisSummaryCopyWith<$Res> implements $DiagnosisSummaryCopyWith<$Res> {
  factory _$DiagnosisSummaryCopyWith(_DiagnosisSummary value, $Res Function(_DiagnosisSummary) _then) = __$DiagnosisSummaryCopyWithImpl;
@override @useResult
$Res call({
 List<ProbableDisease> diagnoses
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
@override @pragma('vm:prefer-inline') $Res call({Object? diagnoses = null,}) {
  return _then(_DiagnosisSummary(
diagnoses: null == diagnoses ? _self._diagnoses : diagnoses // ignore: cast_nullable_to_non_nullable
as List<ProbableDisease>,
  ));
}


}


/// @nodoc
mixin _$FollowUpResponse {

@JsonKey(name: 'response_type') String get responseType; Question? get question;@JsonKey(name: 'diagnosis_summary') DiagnosisSummary? get diagnosisSummary; int? get total;
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
@JsonKey(name: 'response_type') String responseType, Question? question,@JsonKey(name: 'diagnosis_summary') DiagnosisSummary? diagnosisSummary, int? total
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
@pragma('vm:prefer-inline') @override $Res call({Object? responseType = null,Object? question = freezed,Object? diagnosisSummary = freezed,Object? total = freezed,}) {
  return _then(FollowUpResponse(
responseType: null == responseType ? _self.responseType : responseType // ignore: cast_nullable_to_non_nullable
as String,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as Question?,diagnosisSummary: freezed == diagnosisSummary ? _self.diagnosisSummary : diagnosisSummary // ignore: cast_nullable_to_non_nullable
as DiagnosisSummary?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'response_type')  String responseType,  Question? question, @JsonKey(name: 'diagnosis_summary')  DiagnosisSummary? diagnosisSummary,  int? total)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'response_type')  String responseType,  Question? question, @JsonKey(name: 'diagnosis_summary')  DiagnosisSummary? diagnosisSummary,  int? total)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'response_type')  String responseType,  Question? question, @JsonKey(name: 'diagnosis_summary')  DiagnosisSummary? diagnosisSummary,  int? total)?  $default,) {final _that = this;
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
  const _FollowUpResponse({@JsonKey(name: 'response_type') this.responseType = "question", this.question, @JsonKey(name: 'diagnosis_summary') this.diagnosisSummary, this.total});
  factory _FollowUpResponse.fromJson(Map<String, dynamic> json) => _$FollowUpResponseFromJson(json);

@override@JsonKey(name: 'response_type') final  String responseType;
@override final  Question? question;
@override@JsonKey(name: 'diagnosis_summary') final  DiagnosisSummary? diagnosisSummary;
@override final  int? total;

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
@JsonKey(name: 'response_type') String responseType, Question? question,@JsonKey(name: 'diagnosis_summary') DiagnosisSummary? diagnosisSummary, int? total
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
@override @pragma('vm:prefer-inline') $Res call({Object? responseType = null,Object? question = freezed,Object? diagnosisSummary = freezed,Object? total = freezed,}) {
  return _then(_FollowUpResponse(
responseType: null == responseType ? _self.responseType : responseType // ignore: cast_nullable_to_non_nullable
as String,question: freezed == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as Question?,diagnosisSummary: freezed == diagnosisSummary ? _self.diagnosisSummary : diagnosisSummary // ignore: cast_nullable_to_non_nullable
as DiagnosisSummary?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
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

@JsonKey(name: 'session_id') String get sessionId;@JsonKey(name: 'question_id') String get questionId; String get answer;@JsonKey(name: 'force_diagnosis') bool get forceDiagnosis;
/// Create a copy of SubmitFollowUpAnswerRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitFollowUpAnswerRequestCopyWith<SubmitFollowUpAnswerRequest> get copyWith => _$SubmitFollowUpAnswerRequestCopyWithImpl<SubmitFollowUpAnswerRequest>(this as SubmitFollowUpAnswerRequest, _$identity);

  /// Serializes this SubmitFollowUpAnswerRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitFollowUpAnswerRequest&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.forceDiagnosis, forceDiagnosis) || other.forceDiagnosis == forceDiagnosis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId,questionId,answer,forceDiagnosis);

@override
String toString() {
  return 'SubmitFollowUpAnswerRequest(sessionId: $sessionId, questionId: $questionId, answer: $answer, forceDiagnosis: $forceDiagnosis)';
}


}

/// @nodoc
abstract mixin class $SubmitFollowUpAnswerRequestCopyWith<$Res>  {
  factory $SubmitFollowUpAnswerRequestCopyWith(SubmitFollowUpAnswerRequest value, $Res Function(SubmitFollowUpAnswerRequest) _then) = _$SubmitFollowUpAnswerRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'question_id') String questionId, String answer,@JsonKey(name: 'force_diagnosis') bool forceDiagnosis
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
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,Object? questionId = null,Object? answer = null,Object? forceDiagnosis = null,}) {
  return _then(SubmitFollowUpAnswerRequest(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,forceDiagnosis: null == forceDiagnosis ? _self.forceDiagnosis : forceDiagnosis // ignore: cast_nullable_to_non_nullable
as bool,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'question_id')  String questionId,  String answer, @JsonKey(name: 'force_diagnosis')  bool forceDiagnosis)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitFollowUpAnswerRequest() when $default != null:
return $default(_that.sessionId,_that.questionId,_that.answer,_that.forceDiagnosis);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'question_id')  String questionId,  String answer, @JsonKey(name: 'force_diagnosis')  bool forceDiagnosis)  $default,) {final _that = this;
switch (_that) {
case _SubmitFollowUpAnswerRequest():
return $default(_that.sessionId,_that.questionId,_that.answer,_that.forceDiagnosis);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'session_id')  String sessionId, @JsonKey(name: 'question_id')  String questionId,  String answer, @JsonKey(name: 'force_diagnosis')  bool forceDiagnosis)?  $default,) {final _that = this;
switch (_that) {
case _SubmitFollowUpAnswerRequest() when $default != null:
return $default(_that.sessionId,_that.questionId,_that.answer,_that.forceDiagnosis);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubmitFollowUpAnswerRequest implements SubmitFollowUpAnswerRequest {
  const _SubmitFollowUpAnswerRequest({@JsonKey(name: 'session_id') required this.sessionId, @JsonKey(name: 'question_id') required this.questionId, required this.answer, @JsonKey(name: 'force_diagnosis') this.forceDiagnosis = false});
  factory _SubmitFollowUpAnswerRequest.fromJson(Map<String, dynamic> json) => _$SubmitFollowUpAnswerRequestFromJson(json);

@override@JsonKey(name: 'session_id') final  String sessionId;
@override@JsonKey(name: 'question_id') final  String questionId;
@override final  String answer;
@override@JsonKey(name: 'force_diagnosis') final  bool forceDiagnosis;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitFollowUpAnswerRequest&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.forceDiagnosis, forceDiagnosis) || other.forceDiagnosis == forceDiagnosis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sessionId,questionId,answer,forceDiagnosis);

@override
String toString() {
  return 'SubmitFollowUpAnswerRequest(sessionId: $sessionId, questionId: $questionId, answer: $answer, forceDiagnosis: $forceDiagnosis)';
}


}

/// @nodoc
abstract mixin class _$SubmitFollowUpAnswerRequestCopyWith<$Res> implements $SubmitFollowUpAnswerRequestCopyWith<$Res> {
  factory _$SubmitFollowUpAnswerRequestCopyWith(_SubmitFollowUpAnswerRequest value, $Res Function(_SubmitFollowUpAnswerRequest) _then) = __$SubmitFollowUpAnswerRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'session_id') String sessionId,@JsonKey(name: 'question_id') String questionId, String answer,@JsonKey(name: 'force_diagnosis') bool forceDiagnosis
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
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? questionId = null,Object? answer = null,Object? forceDiagnosis = null,}) {
  return _then(_SubmitFollowUpAnswerRequest(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,forceDiagnosis: null == forceDiagnosis ? _self.forceDiagnosis : forceDiagnosis // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$ConversationTurn {

 String? get role; String? get text;
/// Create a copy of ConversationTurn
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationTurnCopyWith<ConversationTurn> get copyWith => _$ConversationTurnCopyWithImpl<ConversationTurn>(this as ConversationTurn, _$identity);

  /// Serializes this ConversationTurn to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationTurn&&(identical(other.role, role) || other.role == role)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,text);

@override
String toString() {
  return 'ConversationTurn(role: $role, text: $text)';
}


}

/// @nodoc
abstract mixin class $ConversationTurnCopyWith<$Res>  {
  factory $ConversationTurnCopyWith(ConversationTurn value, $Res Function(ConversationTurn) _then) = _$ConversationTurnCopyWithImpl;
@useResult
$Res call({
 String? role, String? text
});




}
/// @nodoc
class _$ConversationTurnCopyWithImpl<$Res>
    implements $ConversationTurnCopyWith<$Res> {
  _$ConversationTurnCopyWithImpl(this._self, this._then);

  final ConversationTurn _self;
  final $Res Function(ConversationTurn) _then;

/// Create a copy of ConversationTurn
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = freezed,Object? text = freezed,}) {
  return _then(ConversationTurn(
role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConversationTurn].
extension ConversationTurnPatterns on ConversationTurn {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversationTurn value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversationTurn() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversationTurn value)  $default,){
final _that = this;
switch (_that) {
case _ConversationTurn():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversationTurn value)?  $default,){
final _that = this;
switch (_that) {
case _ConversationTurn() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? role,  String? text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationTurn() when $default != null:
return $default(_that.role,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? role,  String? text)  $default,) {final _that = this;
switch (_that) {
case _ConversationTurn():
return $default(_that.role,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? role,  String? text)?  $default,) {final _that = this;
switch (_that) {
case _ConversationTurn() when $default != null:
return $default(_that.role,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversationTurn implements ConversationTurn {
  const _ConversationTurn({this.role, this.text});
  factory _ConversationTurn.fromJson(Map<String, dynamic> json) => _$ConversationTurnFromJson(json);

@override final  String? role;
@override final  String? text;

/// Create a copy of ConversationTurn
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationTurnCopyWith<_ConversationTurn> get copyWith => __$ConversationTurnCopyWithImpl<_ConversationTurn>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationTurnToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationTurn&&(identical(other.role, role) || other.role == role)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,text);

@override
String toString() {
  return 'ConversationTurn(role: $role, text: $text)';
}


}

/// @nodoc
abstract mixin class _$ConversationTurnCopyWith<$Res> implements $ConversationTurnCopyWith<$Res> {
  factory _$ConversationTurnCopyWith(_ConversationTurn value, $Res Function(_ConversationTurn) _then) = __$ConversationTurnCopyWithImpl;
@override @useResult
$Res call({
 String? role, String? text
});




}
/// @nodoc
class __$ConversationTurnCopyWithImpl<$Res>
    implements _$ConversationTurnCopyWith<$Res> {
  __$ConversationTurnCopyWithImpl(this._self, this._then);

  final _ConversationTurn _self;
  final $Res Function(_ConversationTurn) _then;

/// Create a copy of ConversationTurn
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = freezed,Object? text = freezed,}) {
  return _then(_ConversationTurn(
role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Diagnosis {

@JsonKey(name: "disease_name") String? get diseaseName; double? get probability; String? get confidence; String? get specialist; String? get advice;@JsonKey(name: "disease_name_local") String? get diseaseNameLocal;@JsonKey(name: "specialist_local") String? get specialistLocal;@JsonKey(name: "advice_local") String? get adviceLocal;
/// Create a copy of Diagnosis
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosisCopyWith<Diagnosis> get copyWith => _$DiagnosisCopyWithImpl<Diagnosis>(this as Diagnosis, _$identity);

  /// Serializes this Diagnosis to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Diagnosis&&(identical(other.diseaseName, diseaseName) || other.diseaseName == diseaseName)&&(identical(other.probability, probability) || other.probability == probability)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.specialist, specialist) || other.specialist == specialist)&&(identical(other.advice, advice) || other.advice == advice)&&(identical(other.diseaseNameLocal, diseaseNameLocal) || other.diseaseNameLocal == diseaseNameLocal)&&(identical(other.specialistLocal, specialistLocal) || other.specialistLocal == specialistLocal)&&(identical(other.adviceLocal, adviceLocal) || other.adviceLocal == adviceLocal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,diseaseName,probability,confidence,specialist,advice,diseaseNameLocal,specialistLocal,adviceLocal);

@override
String toString() {
  return 'Diagnosis(diseaseName: $diseaseName, probability: $probability, confidence: $confidence, specialist: $specialist, advice: $advice, diseaseNameLocal: $diseaseNameLocal, specialistLocal: $specialistLocal, adviceLocal: $adviceLocal)';
}


}

/// @nodoc
abstract mixin class $DiagnosisCopyWith<$Res>  {
  factory $DiagnosisCopyWith(Diagnosis value, $Res Function(Diagnosis) _then) = _$DiagnosisCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "disease_name") String? diseaseName, double? probability, String? confidence, String? specialist, String? advice,@JsonKey(name: "disease_name_local") String? diseaseNameLocal,@JsonKey(name: "specialist_local") String? specialistLocal,@JsonKey(name: "advice_local") String? adviceLocal
});




}
/// @nodoc
class _$DiagnosisCopyWithImpl<$Res>
    implements $DiagnosisCopyWith<$Res> {
  _$DiagnosisCopyWithImpl(this._self, this._then);

  final Diagnosis _self;
  final $Res Function(Diagnosis) _then;

/// Create a copy of Diagnosis
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? diseaseName = freezed,Object? probability = freezed,Object? confidence = freezed,Object? specialist = freezed,Object? advice = freezed,Object? diseaseNameLocal = freezed,Object? specialistLocal = freezed,Object? adviceLocal = freezed,}) {
  return _then(Diagnosis(
diseaseName: freezed == diseaseName ? _self.diseaseName : diseaseName // ignore: cast_nullable_to_non_nullable
as String?,probability: freezed == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as double?,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as String?,specialist: freezed == specialist ? _self.specialist : specialist // ignore: cast_nullable_to_non_nullable
as String?,advice: freezed == advice ? _self.advice : advice // ignore: cast_nullable_to_non_nullable
as String?,diseaseNameLocal: freezed == diseaseNameLocal ? _self.diseaseNameLocal : diseaseNameLocal // ignore: cast_nullable_to_non_nullable
as String?,specialistLocal: freezed == specialistLocal ? _self.specialistLocal : specialistLocal // ignore: cast_nullable_to_non_nullable
as String?,adviceLocal: freezed == adviceLocal ? _self.adviceLocal : adviceLocal // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Diagnosis].
extension DiagnosisPatterns on Diagnosis {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Diagnosis value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Diagnosis() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Diagnosis value)  $default,){
final _that = this;
switch (_that) {
case _Diagnosis():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Diagnosis value)?  $default,){
final _that = this;
switch (_that) {
case _Diagnosis() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "disease_name")  String? diseaseName,  double? probability,  String? confidence,  String? specialist,  String? advice, @JsonKey(name: "disease_name_local")  String? diseaseNameLocal, @JsonKey(name: "specialist_local")  String? specialistLocal, @JsonKey(name: "advice_local")  String? adviceLocal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Diagnosis() when $default != null:
return $default(_that.diseaseName,_that.probability,_that.confidence,_that.specialist,_that.advice,_that.diseaseNameLocal,_that.specialistLocal,_that.adviceLocal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "disease_name")  String? diseaseName,  double? probability,  String? confidence,  String? specialist,  String? advice, @JsonKey(name: "disease_name_local")  String? diseaseNameLocal, @JsonKey(name: "specialist_local")  String? specialistLocal, @JsonKey(name: "advice_local")  String? adviceLocal)  $default,) {final _that = this;
switch (_that) {
case _Diagnosis():
return $default(_that.diseaseName,_that.probability,_that.confidence,_that.specialist,_that.advice,_that.diseaseNameLocal,_that.specialistLocal,_that.adviceLocal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "disease_name")  String? diseaseName,  double? probability,  String? confidence,  String? specialist,  String? advice, @JsonKey(name: "disease_name_local")  String? diseaseNameLocal, @JsonKey(name: "specialist_local")  String? specialistLocal, @JsonKey(name: "advice_local")  String? adviceLocal)?  $default,) {final _that = this;
switch (_that) {
case _Diagnosis() when $default != null:
return $default(_that.diseaseName,_that.probability,_that.confidence,_that.specialist,_that.advice,_that.diseaseNameLocal,_that.specialistLocal,_that.adviceLocal);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Diagnosis implements Diagnosis {
  const _Diagnosis({@JsonKey(name: "disease_name") this.diseaseName, this.probability, this.confidence, this.specialist, this.advice, @JsonKey(name: "disease_name_local") this.diseaseNameLocal, @JsonKey(name: "specialist_local") this.specialistLocal, @JsonKey(name: "advice_local") this.adviceLocal});
  factory _Diagnosis.fromJson(Map<String, dynamic> json) => _$DiagnosisFromJson(json);

@override@JsonKey(name: "disease_name") final  String? diseaseName;
@override final  double? probability;
@override final  String? confidence;
@override final  String? specialist;
@override final  String? advice;
@override@JsonKey(name: "disease_name_local") final  String? diseaseNameLocal;
@override@JsonKey(name: "specialist_local") final  String? specialistLocal;
@override@JsonKey(name: "advice_local") final  String? adviceLocal;

/// Create a copy of Diagnosis
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosisCopyWith<_Diagnosis> get copyWith => __$DiagnosisCopyWithImpl<_Diagnosis>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiagnosisToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Diagnosis&&(identical(other.diseaseName, diseaseName) || other.diseaseName == diseaseName)&&(identical(other.probability, probability) || other.probability == probability)&&(identical(other.confidence, confidence) || other.confidence == confidence)&&(identical(other.specialist, specialist) || other.specialist == specialist)&&(identical(other.advice, advice) || other.advice == advice)&&(identical(other.diseaseNameLocal, diseaseNameLocal) || other.diseaseNameLocal == diseaseNameLocal)&&(identical(other.specialistLocal, specialistLocal) || other.specialistLocal == specialistLocal)&&(identical(other.adviceLocal, adviceLocal) || other.adviceLocal == adviceLocal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,diseaseName,probability,confidence,specialist,advice,diseaseNameLocal,specialistLocal,adviceLocal);

@override
String toString() {
  return 'Diagnosis(diseaseName: $diseaseName, probability: $probability, confidence: $confidence, specialist: $specialist, advice: $advice, diseaseNameLocal: $diseaseNameLocal, specialistLocal: $specialistLocal, adviceLocal: $adviceLocal)';
}


}

/// @nodoc
abstract mixin class _$DiagnosisCopyWith<$Res> implements $DiagnosisCopyWith<$Res> {
  factory _$DiagnosisCopyWith(_Diagnosis value, $Res Function(_Diagnosis) _then) = __$DiagnosisCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "disease_name") String? diseaseName, double? probability, String? confidence, String? specialist, String? advice,@JsonKey(name: "disease_name_local") String? diseaseNameLocal,@JsonKey(name: "specialist_local") String? specialistLocal,@JsonKey(name: "advice_local") String? adviceLocal
});




}
/// @nodoc
class __$DiagnosisCopyWithImpl<$Res>
    implements _$DiagnosisCopyWith<$Res> {
  __$DiagnosisCopyWithImpl(this._self, this._then);

  final _Diagnosis _self;
  final $Res Function(_Diagnosis) _then;

/// Create a copy of Diagnosis
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? diseaseName = freezed,Object? probability = freezed,Object? confidence = freezed,Object? specialist = freezed,Object? advice = freezed,Object? diseaseNameLocal = freezed,Object? specialistLocal = freezed,Object? adviceLocal = freezed,}) {
  return _then(_Diagnosis(
diseaseName: freezed == diseaseName ? _self.diseaseName : diseaseName // ignore: cast_nullable_to_non_nullable
as String?,probability: freezed == probability ? _self.probability : probability // ignore: cast_nullable_to_non_nullable
as double?,confidence: freezed == confidence ? _self.confidence : confidence // ignore: cast_nullable_to_non_nullable
as String?,specialist: freezed == specialist ? _self.specialist : specialist // ignore: cast_nullable_to_non_nullable
as String?,advice: freezed == advice ? _self.advice : advice // ignore: cast_nullable_to_non_nullable
as String?,diseaseNameLocal: freezed == diseaseNameLocal ? _self.diseaseNameLocal : diseaseNameLocal // ignore: cast_nullable_to_non_nullable
as String?,specialistLocal: freezed == specialistLocal ? _self.specialistLocal : specialistLocal // ignore: cast_nullable_to_non_nullable
as String?,adviceLocal: freezed == adviceLocal ? _self.adviceLocal : adviceLocal // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DiagnosisSessionModel {

 int? get id;@JsonKey(name: "session_hash") String? get sessionHash; String? get status; String? get phase;@JsonKey(name: "started_at") DateTime? get startedAt;@JsonKey(name: "completed_at") DateTime? get completedAt;@JsonKey(name: "ai_result") List<Diagnosis> get diagnoses;
/// Create a copy of DiagnosisSessionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosisSessionModelCopyWith<DiagnosisSessionModel> get copyWith => _$DiagnosisSessionModelCopyWithImpl<DiagnosisSessionModel>(this as DiagnosisSessionModel, _$identity);

  /// Serializes this DiagnosisSessionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiagnosisSessionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sessionHash, sessionHash) || other.sessionHash == sessionHash)&&(identical(other.status, status) || other.status == status)&&(identical(other.phase, phase) || other.phase == phase)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&const DeepCollectionEquality().equals(other.diagnoses, diagnoses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sessionHash,status,phase,startedAt,completedAt,const DeepCollectionEquality().hash(diagnoses));

@override
String toString() {
  return 'DiagnosisSessionModel(id: $id, sessionHash: $sessionHash, status: $status, phase: $phase, startedAt: $startedAt, completedAt: $completedAt, diagnoses: $diagnoses)';
}


}

/// @nodoc
abstract mixin class $DiagnosisSessionModelCopyWith<$Res>  {
  factory $DiagnosisSessionModelCopyWith(DiagnosisSessionModel value, $Res Function(DiagnosisSessionModel) _then) = _$DiagnosisSessionModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: "session_hash") String? sessionHash, String? status, String? phase,@JsonKey(name: "started_at") DateTime? startedAt,@JsonKey(name: "completed_at") DateTime? completedAt,@JsonKey(name: "ai_result") List<Diagnosis> diagnoses
});




}
/// @nodoc
class _$DiagnosisSessionModelCopyWithImpl<$Res>
    implements $DiagnosisSessionModelCopyWith<$Res> {
  _$DiagnosisSessionModelCopyWithImpl(this._self, this._then);

  final DiagnosisSessionModel _self;
  final $Res Function(DiagnosisSessionModel) _then;

/// Create a copy of DiagnosisSessionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? sessionHash = freezed,Object? status = freezed,Object? phase = freezed,Object? startedAt = freezed,Object? completedAt = freezed,Object? diagnoses = null,}) {
  return _then(DiagnosisSessionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,sessionHash: freezed == sessionHash ? _self.sessionHash : sessionHash // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,phase: freezed == phase ? _self.phase : phase // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,diagnoses: null == diagnoses ? _self.diagnoses : diagnoses // ignore: cast_nullable_to_non_nullable
as List<Diagnosis>,
  ));
}

}


/// Adds pattern-matching-related methods to [DiagnosisSessionModel].
extension DiagnosisSessionModelPatterns on DiagnosisSessionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiagnosisSessionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiagnosisSessionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiagnosisSessionModel value)  $default,){
final _that = this;
switch (_that) {
case _DiagnosisSessionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiagnosisSessionModel value)?  $default,){
final _that = this;
switch (_that) {
case _DiagnosisSessionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: "session_hash")  String? sessionHash,  String? status,  String? phase, @JsonKey(name: "started_at")  DateTime? startedAt, @JsonKey(name: "completed_at")  DateTime? completedAt, @JsonKey(name: "ai_result")  List<Diagnosis> diagnoses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiagnosisSessionModel() when $default != null:
return $default(_that.id,_that.sessionHash,_that.status,_that.phase,_that.startedAt,_that.completedAt,_that.diagnoses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: "session_hash")  String? sessionHash,  String? status,  String? phase, @JsonKey(name: "started_at")  DateTime? startedAt, @JsonKey(name: "completed_at")  DateTime? completedAt, @JsonKey(name: "ai_result")  List<Diagnosis> diagnoses)  $default,) {final _that = this;
switch (_that) {
case _DiagnosisSessionModel():
return $default(_that.id,_that.sessionHash,_that.status,_that.phase,_that.startedAt,_that.completedAt,_that.diagnoses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: "session_hash")  String? sessionHash,  String? status,  String? phase, @JsonKey(name: "started_at")  DateTime? startedAt, @JsonKey(name: "completed_at")  DateTime? completedAt, @JsonKey(name: "ai_result")  List<Diagnosis> diagnoses)?  $default,) {final _that = this;
switch (_that) {
case _DiagnosisSessionModel() when $default != null:
return $default(_that.id,_that.sessionHash,_that.status,_that.phase,_that.startedAt,_that.completedAt,_that.diagnoses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DiagnosisSessionModel implements DiagnosisSessionModel {
  const _DiagnosisSessionModel({this.id, @JsonKey(name: "session_hash") this.sessionHash, this.status, this.phase, @JsonKey(name: "started_at") this.startedAt, @JsonKey(name: "completed_at") this.completedAt, @JsonKey(name: "ai_result")  List<Diagnosis> diagnoses = const []}): _diagnoses = diagnoses;
  factory _DiagnosisSessionModel.fromJson(Map<String, dynamic> json) => _$DiagnosisSessionModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: "session_hash") final  String? sessionHash;
@override final  String? status;
@override final  String? phase;
@override@JsonKey(name: "started_at") final  DateTime? startedAt;
@override@JsonKey(name: "completed_at") final  DateTime? completedAt;
 final  List<Diagnosis> _diagnoses;
@override@JsonKey(name: "ai_result") List<Diagnosis> get diagnoses {
  if (_diagnoses is EqualUnmodifiableListView) return _diagnoses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_diagnoses);
}


/// Create a copy of DiagnosisSessionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosisSessionModelCopyWith<_DiagnosisSessionModel> get copyWith => __$DiagnosisSessionModelCopyWithImpl<_DiagnosisSessionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DiagnosisSessionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiagnosisSessionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sessionHash, sessionHash) || other.sessionHash == sessionHash)&&(identical(other.status, status) || other.status == status)&&(identical(other.phase, phase) || other.phase == phase)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&const DeepCollectionEquality().equals(other._diagnoses, _diagnoses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sessionHash,status,phase,startedAt,completedAt,const DeepCollectionEquality().hash(_diagnoses));

@override
String toString() {
  return 'DiagnosisSessionModel(id: $id, sessionHash: $sessionHash, status: $status, phase: $phase, startedAt: $startedAt, completedAt: $completedAt, diagnoses: $diagnoses)';
}


}

/// @nodoc
abstract mixin class _$DiagnosisSessionModelCopyWith<$Res> implements $DiagnosisSessionModelCopyWith<$Res> {
  factory _$DiagnosisSessionModelCopyWith(_DiagnosisSessionModel value, $Res Function(_DiagnosisSessionModel) _then) = __$DiagnosisSessionModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: "session_hash") String? sessionHash, String? status, String? phase,@JsonKey(name: "started_at") DateTime? startedAt,@JsonKey(name: "completed_at") DateTime? completedAt,@JsonKey(name: "ai_result") List<Diagnosis> diagnoses
});




}
/// @nodoc
class __$DiagnosisSessionModelCopyWithImpl<$Res>
    implements _$DiagnosisSessionModelCopyWith<$Res> {
  __$DiagnosisSessionModelCopyWithImpl(this._self, this._then);

  final _DiagnosisSessionModel _self;
  final $Res Function(_DiagnosisSessionModel) _then;

/// Create a copy of DiagnosisSessionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? sessionHash = freezed,Object? status = freezed,Object? phase = freezed,Object? startedAt = freezed,Object? completedAt = freezed,Object? diagnoses = null,}) {
  return _then(_DiagnosisSessionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,sessionHash: freezed == sessionHash ? _self.sessionHash : sessionHash // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,phase: freezed == phase ? _self.phase : phase // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,diagnoses: null == diagnoses ? _self._diagnoses : diagnoses // ignore: cast_nullable_to_non_nullable
as List<Diagnosis>,
  ));
}


}


/// @nodoc
mixin _$FinalReport {

 DiagnosisSessionModel? get session;@JsonKey(name: "started_at") String? get startedAt; DoctorModel? get doctor;@JsonKey(name: "completed_at") String? get completedAt;@JsonKey(name: "workflow_steps") List<WorkflowItemModel>? get workflowSteps;
/// Create a copy of FinalReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinalReportCopyWith<FinalReport> get copyWith => _$FinalReportCopyWithImpl<FinalReport>(this as FinalReport, _$identity);

  /// Serializes this FinalReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinalReport&&(identical(other.session, session) || other.session == session)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.doctor, doctor) || other.doctor == doctor)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&const DeepCollectionEquality().equals(other.workflowSteps, workflowSteps));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,session,startedAt,doctor,completedAt,const DeepCollectionEquality().hash(workflowSteps));

@override
String toString() {
  return 'FinalReport(session: $session, startedAt: $startedAt, doctor: $doctor, completedAt: $completedAt, workflowSteps: $workflowSteps)';
}


}

/// @nodoc
abstract mixin class $FinalReportCopyWith<$Res>  {
  factory $FinalReportCopyWith(FinalReport value, $Res Function(FinalReport) _then) = _$FinalReportCopyWithImpl;
@useResult
$Res call({
 DiagnosisSessionModel? session,@JsonKey(name: "started_at") String? startedAt, DoctorModel? doctor,@JsonKey(name: "completed_at") String? completedAt,@JsonKey(name: "workflow_steps") List<WorkflowItemModel>? workflowSteps
});


$DiagnosisSessionModelCopyWith<$Res>? get session;$DoctorModelCopyWith<$Res>? get doctor;

}
/// @nodoc
class _$FinalReportCopyWithImpl<$Res>
    implements $FinalReportCopyWith<$Res> {
  _$FinalReportCopyWithImpl(this._self, this._then);

  final FinalReport _self;
  final $Res Function(FinalReport) _then;

/// Create a copy of FinalReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? session = freezed,Object? startedAt = freezed,Object? doctor = freezed,Object? completedAt = freezed,Object? workflowSteps = freezed,}) {
  return _then(FinalReport(
session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as DiagnosisSessionModel?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as String?,doctor: freezed == doctor ? _self.doctor : doctor // ignore: cast_nullable_to_non_nullable
as DoctorModel?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as String?,workflowSteps: freezed == workflowSteps ? _self.workflowSteps : workflowSteps // ignore: cast_nullable_to_non_nullable
as List<WorkflowItemModel>?,
  ));
}
/// Create a copy of FinalReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisSessionModelCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $DiagnosisSessionModelCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}/// Create a copy of FinalReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DoctorModelCopyWith<$Res>? get doctor {
    if (_self.doctor == null) {
    return null;
  }

  return $DoctorModelCopyWith<$Res>(_self.doctor!, (value) {
    return _then(_self.copyWith(doctor: value));
  });
}
}


/// Adds pattern-matching-related methods to [FinalReport].
extension FinalReportPatterns on FinalReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinalReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinalReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinalReport value)  $default,){
final _that = this;
switch (_that) {
case _FinalReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinalReport value)?  $default,){
final _that = this;
switch (_that) {
case _FinalReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DiagnosisSessionModel? session, @JsonKey(name: "started_at")  String? startedAt,  DoctorModel? doctor, @JsonKey(name: "completed_at")  String? completedAt, @JsonKey(name: "workflow_steps")  List<WorkflowItemModel>? workflowSteps)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinalReport() when $default != null:
return $default(_that.session,_that.startedAt,_that.doctor,_that.completedAt,_that.workflowSteps);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DiagnosisSessionModel? session, @JsonKey(name: "started_at")  String? startedAt,  DoctorModel? doctor, @JsonKey(name: "completed_at")  String? completedAt, @JsonKey(name: "workflow_steps")  List<WorkflowItemModel>? workflowSteps)  $default,) {final _that = this;
switch (_that) {
case _FinalReport():
return $default(_that.session,_that.startedAt,_that.doctor,_that.completedAt,_that.workflowSteps);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DiagnosisSessionModel? session, @JsonKey(name: "started_at")  String? startedAt,  DoctorModel? doctor, @JsonKey(name: "completed_at")  String? completedAt, @JsonKey(name: "workflow_steps")  List<WorkflowItemModel>? workflowSteps)?  $default,) {final _that = this;
switch (_that) {
case _FinalReport() when $default != null:
return $default(_that.session,_that.startedAt,_that.doctor,_that.completedAt,_that.workflowSteps);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinalReport implements FinalReport {
  const _FinalReport({this.session, @JsonKey(name: "started_at") this.startedAt, this.doctor, @JsonKey(name: "completed_at") this.completedAt, @JsonKey(name: "workflow_steps")  List<WorkflowItemModel>? workflowSteps}): _workflowSteps = workflowSteps;
  factory _FinalReport.fromJson(Map<String, dynamic> json) => _$FinalReportFromJson(json);

@override final  DiagnosisSessionModel? session;
@override@JsonKey(name: "started_at") final  String? startedAt;
@override final  DoctorModel? doctor;
@override@JsonKey(name: "completed_at") final  String? completedAt;
 final  List<WorkflowItemModel>? _workflowSteps;
@override@JsonKey(name: "workflow_steps") List<WorkflowItemModel>? get workflowSteps {
  final value = _workflowSteps;
  if (value == null) return null;
  if (_workflowSteps is EqualUnmodifiableListView) return _workflowSteps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FinalReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinalReportCopyWith<_FinalReport> get copyWith => __$FinalReportCopyWithImpl<_FinalReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinalReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinalReport&&(identical(other.session, session) || other.session == session)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.doctor, doctor) || other.doctor == doctor)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&const DeepCollectionEquality().equals(other._workflowSteps, _workflowSteps));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,session,startedAt,doctor,completedAt,const DeepCollectionEquality().hash(_workflowSteps));

@override
String toString() {
  return 'FinalReport(session: $session, startedAt: $startedAt, doctor: $doctor, completedAt: $completedAt, workflowSteps: $workflowSteps)';
}


}

/// @nodoc
abstract mixin class _$FinalReportCopyWith<$Res> implements $FinalReportCopyWith<$Res> {
  factory _$FinalReportCopyWith(_FinalReport value, $Res Function(_FinalReport) _then) = __$FinalReportCopyWithImpl;
@override @useResult
$Res call({
 DiagnosisSessionModel? session,@JsonKey(name: "started_at") String? startedAt, DoctorModel? doctor,@JsonKey(name: "completed_at") String? completedAt,@JsonKey(name: "workflow_steps") List<WorkflowItemModel>? workflowSteps
});


@override $DiagnosisSessionModelCopyWith<$Res>? get session;@override $DoctorModelCopyWith<$Res>? get doctor;

}
/// @nodoc
class __$FinalReportCopyWithImpl<$Res>
    implements _$FinalReportCopyWith<$Res> {
  __$FinalReportCopyWithImpl(this._self, this._then);

  final _FinalReport _self;
  final $Res Function(_FinalReport) _then;

/// Create a copy of FinalReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? session = freezed,Object? startedAt = freezed,Object? doctor = freezed,Object? completedAt = freezed,Object? workflowSteps = freezed,}) {
  return _then(_FinalReport(
session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as DiagnosisSessionModel?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as String?,doctor: freezed == doctor ? _self.doctor : doctor // ignore: cast_nullable_to_non_nullable
as DoctorModel?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as String?,workflowSteps: freezed == workflowSteps ? _self._workflowSteps : workflowSteps // ignore: cast_nullable_to_non_nullable
as List<WorkflowItemModel>?,
  ));
}

/// Create a copy of FinalReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DiagnosisSessionModelCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $DiagnosisSessionModelCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}/// Create a copy of FinalReport
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DoctorModelCopyWith<$Res>? get doctor {
    if (_self.doctor == null) {
    return null;
  }

  return $DoctorModelCopyWith<$Res>(_self.doctor!, (value) {
    return _then(_self.copyWith(doctor: value));
  });
}
}


/// @nodoc
mixin _$SessionHistoryItem {

 String? get id;@JsonKey(name: 'created_at') String? get createdAt; String? get status;@JsonKey(name: 'top_disease') String? get topDisease;@JsonKey(name: 'top_probability') double? get topProbability;
/// Create a copy of SessionHistoryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionHistoryItemCopyWith<SessionHistoryItem> get copyWith => _$SessionHistoryItemCopyWithImpl<SessionHistoryItem>(this as SessionHistoryItem, _$identity);

  /// Serializes this SessionHistoryItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionHistoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.topDisease, topDisease) || other.topDisease == topDisease)&&(identical(other.topProbability, topProbability) || other.topProbability == topProbability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,status,topDisease,topProbability);

@override
String toString() {
  return 'SessionHistoryItem(id: $id, createdAt: $createdAt, status: $status, topDisease: $topDisease, topProbability: $topProbability)';
}


}

/// @nodoc
abstract mixin class $SessionHistoryItemCopyWith<$Res>  {
  factory $SessionHistoryItemCopyWith(SessionHistoryItem value, $Res Function(SessionHistoryItem) _then) = _$SessionHistoryItemCopyWithImpl;
@useResult
$Res call({
 String? id,@JsonKey(name: 'created_at') String? createdAt, String? status,@JsonKey(name: 'top_disease') String? topDisease,@JsonKey(name: 'top_probability') double? topProbability
});




}
/// @nodoc
class _$SessionHistoryItemCopyWithImpl<$Res>
    implements $SessionHistoryItemCopyWith<$Res> {
  _$SessionHistoryItemCopyWithImpl(this._self, this._then);

  final SessionHistoryItem _self;
  final $Res Function(SessionHistoryItem) _then;

/// Create a copy of SessionHistoryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? status = freezed,Object? topDisease = freezed,Object? topProbability = freezed,}) {
  return _then(SessionHistoryItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,topDisease: freezed == topDisease ? _self.topDisease : topDisease // ignore: cast_nullable_to_non_nullable
as String?,topProbability: freezed == topProbability ? _self.topProbability : topProbability // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionHistoryItem].
extension SessionHistoryItemPatterns on SessionHistoryItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionHistoryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionHistoryItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionHistoryItem value)  $default,){
final _that = this;
switch (_that) {
case _SessionHistoryItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionHistoryItem value)?  $default,){
final _that = this;
switch (_that) {
case _SessionHistoryItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: 'created_at')  String? createdAt,  String? status, @JsonKey(name: 'top_disease')  String? topDisease, @JsonKey(name: 'top_probability')  double? topProbability)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionHistoryItem() when $default != null:
return $default(_that.id,_that.createdAt,_that.status,_that.topDisease,_that.topProbability);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: 'created_at')  String? createdAt,  String? status, @JsonKey(name: 'top_disease')  String? topDisease, @JsonKey(name: 'top_probability')  double? topProbability)  $default,) {final _that = this;
switch (_that) {
case _SessionHistoryItem():
return $default(_that.id,_that.createdAt,_that.status,_that.topDisease,_that.topProbability);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id, @JsonKey(name: 'created_at')  String? createdAt,  String? status, @JsonKey(name: 'top_disease')  String? topDisease, @JsonKey(name: 'top_probability')  double? topProbability)?  $default,) {final _that = this;
switch (_that) {
case _SessionHistoryItem() when $default != null:
return $default(_that.id,_that.createdAt,_that.status,_that.topDisease,_that.topProbability);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionHistoryItem implements SessionHistoryItem {
  const _SessionHistoryItem({this.id, @JsonKey(name: 'created_at') this.createdAt, this.status, @JsonKey(name: 'top_disease') this.topDisease, @JsonKey(name: 'top_probability') this.topProbability});
  factory _SessionHistoryItem.fromJson(Map<String, dynamic> json) => _$SessionHistoryItemFromJson(json);

@override final  String? id;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override final  String? status;
@override@JsonKey(name: 'top_disease') final  String? topDisease;
@override@JsonKey(name: 'top_probability') final  double? topProbability;

/// Create a copy of SessionHistoryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionHistoryItemCopyWith<_SessionHistoryItem> get copyWith => __$SessionHistoryItemCopyWithImpl<_SessionHistoryItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionHistoryItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionHistoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.topDisease, topDisease) || other.topDisease == topDisease)&&(identical(other.topProbability, topProbability) || other.topProbability == topProbability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,status,topDisease,topProbability);

@override
String toString() {
  return 'SessionHistoryItem(id: $id, createdAt: $createdAt, status: $status, topDisease: $topDisease, topProbability: $topProbability)';
}


}

/// @nodoc
abstract mixin class _$SessionHistoryItemCopyWith<$Res> implements $SessionHistoryItemCopyWith<$Res> {
  factory _$SessionHistoryItemCopyWith(_SessionHistoryItem value, $Res Function(_SessionHistoryItem) _then) = __$SessionHistoryItemCopyWithImpl;
@override @useResult
$Res call({
 String? id,@JsonKey(name: 'created_at') String? createdAt, String? status,@JsonKey(name: 'top_disease') String? topDisease,@JsonKey(name: 'top_probability') double? topProbability
});




}
/// @nodoc
class __$SessionHistoryItemCopyWithImpl<$Res>
    implements _$SessionHistoryItemCopyWith<$Res> {
  __$SessionHistoryItemCopyWithImpl(this._self, this._then);

  final _SessionHistoryItem _self;
  final $Res Function(_SessionHistoryItem) _then;

/// Create a copy of SessionHistoryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? status = freezed,Object? topDisease = freezed,Object? topProbability = freezed,}) {
  return _then(_SessionHistoryItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,topDisease: freezed == topDisease ? _self.topDisease : topDisease // ignore: cast_nullable_to_non_nullable
as String?,topProbability: freezed == topProbability ? _self.topProbability : topProbability // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
