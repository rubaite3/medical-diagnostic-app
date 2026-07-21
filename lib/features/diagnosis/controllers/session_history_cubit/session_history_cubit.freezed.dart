// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionHistoryState {

 String get statusMessage; Operation get op; List<SessionHistoryItem> get sessions;
/// Create a copy of SessionHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionHistoryStateCopyWith<SessionHistoryState> get copyWith => _$SessionHistoryStateCopyWithImpl<SessionHistoryState>(this as SessionHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionHistoryState&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.op, op) || other.op == op)&&const DeepCollectionEquality().equals(other.sessions, sessions));
}


@override
int get hashCode => Object.hash(runtimeType,statusMessage,op,const DeepCollectionEquality().hash(sessions));

@override
String toString() {
  return 'SessionHistoryState(statusMessage: $statusMessage, op: $op, sessions: $sessions)';
}


}

/// @nodoc
abstract mixin class $SessionHistoryStateCopyWith<$Res>  {
  factory $SessionHistoryStateCopyWith(SessionHistoryState value, $Res Function(SessionHistoryState) _then) = _$SessionHistoryStateCopyWithImpl;
@useResult
$Res call({
 String statusMessage, Operation op, List<SessionHistoryItem> sessions
});




}
/// @nodoc
class _$SessionHistoryStateCopyWithImpl<$Res>
    implements $SessionHistoryStateCopyWith<$Res> {
  _$SessionHistoryStateCopyWithImpl(this._self, this._then);

  final SessionHistoryState _self;
  final $Res Function(SessionHistoryState) _then;

/// Create a copy of SessionHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statusMessage = null,Object? op = null,Object? sessions = null,}) {
  return _then(SessionHistoryState(
statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,op: null == op ? _self.op : op // ignore: cast_nullable_to_non_nullable
as Operation,sessions: null == sessions ? _self.sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<SessionHistoryItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionHistoryState].
extension SessionHistoryStatePatterns on SessionHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionHistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _SessionHistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _SessionHistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String statusMessage,  Operation op,  List<SessionHistoryItem> sessions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionHistoryState() when $default != null:
return $default(_that.statusMessage,_that.op,_that.sessions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String statusMessage,  Operation op,  List<SessionHistoryItem> sessions)  $default,) {final _that = this;
switch (_that) {
case _SessionHistoryState():
return $default(_that.statusMessage,_that.op,_that.sessions);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String statusMessage,  Operation op,  List<SessionHistoryItem> sessions)?  $default,) {final _that = this;
switch (_that) {
case _SessionHistoryState() when $default != null:
return $default(_that.statusMessage,_that.op,_that.sessions);case _:
  return null;

}
}

}

/// @nodoc


class _SessionHistoryState implements SessionHistoryState {
  const _SessionHistoryState({required this.statusMessage, required this.op, required  List<SessionHistoryItem> sessions}): _sessions = sessions;
  

@override final  String statusMessage;
@override final  Operation op;
 final  List<SessionHistoryItem> _sessions;
@override List<SessionHistoryItem> get sessions {
  if (_sessions is EqualUnmodifiableListView) return _sessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sessions);
}


/// Create a copy of SessionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionHistoryStateCopyWith<_SessionHistoryState> get copyWith => __$SessionHistoryStateCopyWithImpl<_SessionHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionHistoryState&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.op, op) || other.op == op)&&const DeepCollectionEquality().equals(other._sessions, _sessions));
}


@override
int get hashCode => Object.hash(runtimeType,statusMessage,op,const DeepCollectionEquality().hash(_sessions));

@override
String toString() {
  return 'SessionHistoryState(statusMessage: $statusMessage, op: $op, sessions: $sessions)';
}


}

/// @nodoc
abstract mixin class _$SessionHistoryStateCopyWith<$Res> implements $SessionHistoryStateCopyWith<$Res> {
  factory _$SessionHistoryStateCopyWith(_SessionHistoryState value, $Res Function(_SessionHistoryState) _then) = __$SessionHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 String statusMessage, Operation op, List<SessionHistoryItem> sessions
});




}
/// @nodoc
class __$SessionHistoryStateCopyWithImpl<$Res>
    implements _$SessionHistoryStateCopyWith<$Res> {
  __$SessionHistoryStateCopyWithImpl(this._self, this._then);

  final _SessionHistoryState _self;
  final $Res Function(_SessionHistoryState) _then;

/// Create a copy of SessionHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statusMessage = null,Object? op = null,Object? sessions = null,}) {
  return _then(_SessionHistoryState(
statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,op: null == op ? _self.op : op // ignore: cast_nullable_to_non_nullable
as Operation,sessions: null == sessions ? _self._sessions : sessions // ignore: cast_nullable_to_non_nullable
as List<SessionHistoryItem>,
  ));
}


}

// dart format on
