// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DiagnosisState {

 Operation get op; String get statusMessage; String? get gender; String? get activityLevel; bool get isSmoker; bool get hasDiabetes; bool get hasHypertension; bool get isPregnant; String? get sessionId; List<Symptom> get searchResults; List<Question> get currentQuestions; FollowUpResponse? get currentFollowUp; int get followUpProgress; int get followUpTotal; Map<String, dynamic>? get finalReport;
/// Create a copy of DiagnosisState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiagnosisStateCopyWith<DiagnosisState> get copyWith => _$DiagnosisStateCopyWithImpl<DiagnosisState>(this as DiagnosisState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiagnosisState&&(identical(other.op, op) || other.op == op)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&(identical(other.isSmoker, isSmoker) || other.isSmoker == isSmoker)&&(identical(other.hasDiabetes, hasDiabetes) || other.hasDiabetes == hasDiabetes)&&(identical(other.hasHypertension, hasHypertension) || other.hasHypertension == hasHypertension)&&(identical(other.isPregnant, isPregnant) || other.isPregnant == isPregnant)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&const DeepCollectionEquality().equals(other.searchResults, searchResults)&&const DeepCollectionEquality().equals(other.currentQuestions, currentQuestions)&&(identical(other.currentFollowUp, currentFollowUp) || other.currentFollowUp == currentFollowUp)&&(identical(other.followUpProgress, followUpProgress) || other.followUpProgress == followUpProgress)&&(identical(other.followUpTotal, followUpTotal) || other.followUpTotal == followUpTotal)&&const DeepCollectionEquality().equals(other.finalReport, finalReport));
}


@override
int get hashCode => Object.hash(runtimeType,op,statusMessage,gender,activityLevel,isSmoker,hasDiabetes,hasHypertension,isPregnant,sessionId,const DeepCollectionEquality().hash(searchResults),const DeepCollectionEquality().hash(currentQuestions),currentFollowUp,followUpProgress,followUpTotal,const DeepCollectionEquality().hash(finalReport));

@override
String toString() {
  return 'DiagnosisState(op: $op, statusMessage: $statusMessage, gender: $gender, activityLevel: $activityLevel, isSmoker: $isSmoker, hasDiabetes: $hasDiabetes, hasHypertension: $hasHypertension, isPregnant: $isPregnant, sessionId: $sessionId, searchResults: $searchResults, currentQuestions: $currentQuestions, currentFollowUp: $currentFollowUp, followUpProgress: $followUpProgress, followUpTotal: $followUpTotal, finalReport: $finalReport)';
}


}

/// @nodoc
abstract mixin class $DiagnosisStateCopyWith<$Res>  {
  factory $DiagnosisStateCopyWith(DiagnosisState value, $Res Function(DiagnosisState) _then) = _$DiagnosisStateCopyWithImpl;
@useResult
$Res call({
 Operation op, String statusMessage, String? gender, String? activityLevel, bool isSmoker, bool hasDiabetes, bool hasHypertension, bool isPregnant, String? sessionId, List<Symptom> searchResults, List<Question> currentQuestions, FollowUpResponse? currentFollowUp, int followUpProgress, int followUpTotal, Map<String, dynamic>? finalReport
});


$FollowUpResponseCopyWith<$Res>? get currentFollowUp;

}
/// @nodoc
class _$DiagnosisStateCopyWithImpl<$Res>
    implements $DiagnosisStateCopyWith<$Res> {
  _$DiagnosisStateCopyWithImpl(this._self, this._then);

  final DiagnosisState _self;
  final $Res Function(DiagnosisState) _then;

/// Create a copy of DiagnosisState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? op = null,Object? statusMessage = null,Object? gender = freezed,Object? activityLevel = freezed,Object? isSmoker = null,Object? hasDiabetes = null,Object? hasHypertension = null,Object? isPregnant = null,Object? sessionId = freezed,Object? searchResults = null,Object? currentQuestions = null,Object? currentFollowUp = freezed,Object? followUpProgress = null,Object? followUpTotal = null,Object? finalReport = freezed,}) {
  return _then(DiagnosisState(
op: null == op ? _self.op : op // ignore: cast_nullable_to_non_nullable
as Operation,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,activityLevel: freezed == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String?,isSmoker: null == isSmoker ? _self.isSmoker : isSmoker // ignore: cast_nullable_to_non_nullable
as bool,hasDiabetes: null == hasDiabetes ? _self.hasDiabetes : hasDiabetes // ignore: cast_nullable_to_non_nullable
as bool,hasHypertension: null == hasHypertension ? _self.hasHypertension : hasHypertension // ignore: cast_nullable_to_non_nullable
as bool,isPregnant: null == isPregnant ? _self.isPregnant : isPregnant // ignore: cast_nullable_to_non_nullable
as bool,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,searchResults: null == searchResults ? _self.searchResults : searchResults // ignore: cast_nullable_to_non_nullable
as List<Symptom>,currentQuestions: null == currentQuestions ? _self.currentQuestions : currentQuestions // ignore: cast_nullable_to_non_nullable
as List<Question>,currentFollowUp: freezed == currentFollowUp ? _self.currentFollowUp : currentFollowUp // ignore: cast_nullable_to_non_nullable
as FollowUpResponse?,followUpProgress: null == followUpProgress ? _self.followUpProgress : followUpProgress // ignore: cast_nullable_to_non_nullable
as int,followUpTotal: null == followUpTotal ? _self.followUpTotal : followUpTotal // ignore: cast_nullable_to_non_nullable
as int,finalReport: freezed == finalReport ? _self.finalReport : finalReport // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of DiagnosisState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FollowUpResponseCopyWith<$Res>? get currentFollowUp {
    if (_self.currentFollowUp == null) {
    return null;
  }

  return $FollowUpResponseCopyWith<$Res>(_self.currentFollowUp!, (value) {
    return _then(_self.copyWith(currentFollowUp: value));
  });
}
}


/// Adds pattern-matching-related methods to [DiagnosisState].
extension DiagnosisStatePatterns on DiagnosisState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiagnosisState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiagnosisState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiagnosisState value)  $default,){
final _that = this;
switch (_that) {
case _DiagnosisState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiagnosisState value)?  $default,){
final _that = this;
switch (_that) {
case _DiagnosisState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Operation op,  String statusMessage,  String? gender,  String? activityLevel,  bool isSmoker,  bool hasDiabetes,  bool hasHypertension,  bool isPregnant,  String? sessionId,  List<Symptom> searchResults,  List<Question> currentQuestions,  FollowUpResponse? currentFollowUp,  int followUpProgress,  int followUpTotal,  Map<String, dynamic>? finalReport)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiagnosisState() when $default != null:
return $default(_that.op,_that.statusMessage,_that.gender,_that.activityLevel,_that.isSmoker,_that.hasDiabetes,_that.hasHypertension,_that.isPregnant,_that.sessionId,_that.searchResults,_that.currentQuestions,_that.currentFollowUp,_that.followUpProgress,_that.followUpTotal,_that.finalReport);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Operation op,  String statusMessage,  String? gender,  String? activityLevel,  bool isSmoker,  bool hasDiabetes,  bool hasHypertension,  bool isPregnant,  String? sessionId,  List<Symptom> searchResults,  List<Question> currentQuestions,  FollowUpResponse? currentFollowUp,  int followUpProgress,  int followUpTotal,  Map<String, dynamic>? finalReport)  $default,) {final _that = this;
switch (_that) {
case _DiagnosisState():
return $default(_that.op,_that.statusMessage,_that.gender,_that.activityLevel,_that.isSmoker,_that.hasDiabetes,_that.hasHypertension,_that.isPregnant,_that.sessionId,_that.searchResults,_that.currentQuestions,_that.currentFollowUp,_that.followUpProgress,_that.followUpTotal,_that.finalReport);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Operation op,  String statusMessage,  String? gender,  String? activityLevel,  bool isSmoker,  bool hasDiabetes,  bool hasHypertension,  bool isPregnant,  String? sessionId,  List<Symptom> searchResults,  List<Question> currentQuestions,  FollowUpResponse? currentFollowUp,  int followUpProgress,  int followUpTotal,  Map<String, dynamic>? finalReport)?  $default,) {final _that = this;
switch (_that) {
case _DiagnosisState() when $default != null:
return $default(_that.op,_that.statusMessage,_that.gender,_that.activityLevel,_that.isSmoker,_that.hasDiabetes,_that.hasHypertension,_that.isPregnant,_that.sessionId,_that.searchResults,_that.currentQuestions,_that.currentFollowUp,_that.followUpProgress,_that.followUpTotal,_that.finalReport);case _:
  return null;

}
}

}

/// @nodoc


class _DiagnosisState implements DiagnosisState {
  const _DiagnosisState({this.op = Operation.neutral, this.statusMessage = "", this.gender, this.activityLevel, this.isSmoker = false, this.hasDiabetes = false, this.hasHypertension = false, this.isPregnant = false, this.sessionId,  List<Symptom> searchResults = const [],  List<Question> currentQuestions = const [], this.currentFollowUp, this.followUpProgress = 0, this.followUpTotal = 0,  Map<String, dynamic>? finalReport}): _searchResults = searchResults,_currentQuestions = currentQuestions,_finalReport = finalReport;
  

@override@JsonKey() final  Operation op;
@override@JsonKey() final  String statusMessage;
@override final  String? gender;
@override final  String? activityLevel;
@override@JsonKey() final  bool isSmoker;
@override@JsonKey() final  bool hasDiabetes;
@override@JsonKey() final  bool hasHypertension;
@override@JsonKey() final  bool isPregnant;
@override final  String? sessionId;
 final  List<Symptom> _searchResults;
@override@JsonKey() List<Symptom> get searchResults {
  if (_searchResults is EqualUnmodifiableListView) return _searchResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResults);
}

 final  List<Question> _currentQuestions;
@override@JsonKey() List<Question> get currentQuestions {
  if (_currentQuestions is EqualUnmodifiableListView) return _currentQuestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currentQuestions);
}

@override final  FollowUpResponse? currentFollowUp;
@override@JsonKey() final  int followUpProgress;
@override@JsonKey() final  int followUpTotal;
 final  Map<String, dynamic>? _finalReport;
@override Map<String, dynamic>? get finalReport {
  final value = _finalReport;
  if (value == null) return null;
  if (_finalReport is EqualUnmodifiableMapView) return _finalReport;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of DiagnosisState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiagnosisStateCopyWith<_DiagnosisState> get copyWith => __$DiagnosisStateCopyWithImpl<_DiagnosisState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiagnosisState&&(identical(other.op, op) || other.op == op)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.activityLevel, activityLevel) || other.activityLevel == activityLevel)&&(identical(other.isSmoker, isSmoker) || other.isSmoker == isSmoker)&&(identical(other.hasDiabetes, hasDiabetes) || other.hasDiabetes == hasDiabetes)&&(identical(other.hasHypertension, hasHypertension) || other.hasHypertension == hasHypertension)&&(identical(other.isPregnant, isPregnant) || other.isPregnant == isPregnant)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&const DeepCollectionEquality().equals(other._searchResults, _searchResults)&&const DeepCollectionEquality().equals(other._currentQuestions, _currentQuestions)&&(identical(other.currentFollowUp, currentFollowUp) || other.currentFollowUp == currentFollowUp)&&(identical(other.followUpProgress, followUpProgress) || other.followUpProgress == followUpProgress)&&(identical(other.followUpTotal, followUpTotal) || other.followUpTotal == followUpTotal)&&const DeepCollectionEquality().equals(other._finalReport, _finalReport));
}


@override
int get hashCode => Object.hash(runtimeType,op,statusMessage,gender,activityLevel,isSmoker,hasDiabetes,hasHypertension,isPregnant,sessionId,const DeepCollectionEquality().hash(_searchResults),const DeepCollectionEquality().hash(_currentQuestions),currentFollowUp,followUpProgress,followUpTotal,const DeepCollectionEquality().hash(_finalReport));

@override
String toString() {
  return 'DiagnosisState(op: $op, statusMessage: $statusMessage, gender: $gender, activityLevel: $activityLevel, isSmoker: $isSmoker, hasDiabetes: $hasDiabetes, hasHypertension: $hasHypertension, isPregnant: $isPregnant, sessionId: $sessionId, searchResults: $searchResults, currentQuestions: $currentQuestions, currentFollowUp: $currentFollowUp, followUpProgress: $followUpProgress, followUpTotal: $followUpTotal, finalReport: $finalReport)';
}


}

/// @nodoc
abstract mixin class _$DiagnosisStateCopyWith<$Res> implements $DiagnosisStateCopyWith<$Res> {
  factory _$DiagnosisStateCopyWith(_DiagnosisState value, $Res Function(_DiagnosisState) _then) = __$DiagnosisStateCopyWithImpl;
@override @useResult
$Res call({
 Operation op, String statusMessage, String? gender, String? activityLevel, bool isSmoker, bool hasDiabetes, bool hasHypertension, bool isPregnant, String? sessionId, List<Symptom> searchResults, List<Question> currentQuestions, FollowUpResponse? currentFollowUp, int followUpProgress, int followUpTotal, Map<String, dynamic>? finalReport
});


@override $FollowUpResponseCopyWith<$Res>? get currentFollowUp;

}
/// @nodoc
class __$DiagnosisStateCopyWithImpl<$Res>
    implements _$DiagnosisStateCopyWith<$Res> {
  __$DiagnosisStateCopyWithImpl(this._self, this._then);

  final _DiagnosisState _self;
  final $Res Function(_DiagnosisState) _then;

/// Create a copy of DiagnosisState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? op = null,Object? statusMessage = null,Object? gender = freezed,Object? activityLevel = freezed,Object? isSmoker = null,Object? hasDiabetes = null,Object? hasHypertension = null,Object? isPregnant = null,Object? sessionId = freezed,Object? searchResults = null,Object? currentQuestions = null,Object? currentFollowUp = freezed,Object? followUpProgress = null,Object? followUpTotal = null,Object? finalReport = freezed,}) {
  return _then(_DiagnosisState(
op: null == op ? _self.op : op // ignore: cast_nullable_to_non_nullable
as Operation,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,activityLevel: freezed == activityLevel ? _self.activityLevel : activityLevel // ignore: cast_nullable_to_non_nullable
as String?,isSmoker: null == isSmoker ? _self.isSmoker : isSmoker // ignore: cast_nullable_to_non_nullable
as bool,hasDiabetes: null == hasDiabetes ? _self.hasDiabetes : hasDiabetes // ignore: cast_nullable_to_non_nullable
as bool,hasHypertension: null == hasHypertension ? _self.hasHypertension : hasHypertension // ignore: cast_nullable_to_non_nullable
as bool,isPregnant: null == isPregnant ? _self.isPregnant : isPregnant // ignore: cast_nullable_to_non_nullable
as bool,sessionId: freezed == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String?,searchResults: null == searchResults ? _self._searchResults : searchResults // ignore: cast_nullable_to_non_nullable
as List<Symptom>,currentQuestions: null == currentQuestions ? _self._currentQuestions : currentQuestions // ignore: cast_nullable_to_non_nullable
as List<Question>,currentFollowUp: freezed == currentFollowUp ? _self.currentFollowUp : currentFollowUp // ignore: cast_nullable_to_non_nullable
as FollowUpResponse?,followUpProgress: null == followUpProgress ? _self.followUpProgress : followUpProgress // ignore: cast_nullable_to_non_nullable
as int,followUpTotal: null == followUpTotal ? _self.followUpTotal : followUpTotal // ignore: cast_nullable_to_non_nullable
as int,finalReport: freezed == finalReport ? _self._finalReport : finalReport // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of DiagnosisState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FollowUpResponseCopyWith<$Res>? get currentFollowUp {
    if (_self.currentFollowUp == null) {
    return null;
  }

  return $FollowUpResponseCopyWith<$Res>(_self.currentFollowUp!, (value) {
    return _then(_self.copyWith(currentFollowUp: value));
  });
}
}

// dart format on
