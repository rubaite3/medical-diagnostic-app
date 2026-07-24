// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_llms_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AvailableLlmsState {

 Operation get op; String get message; List<String> get availableLLMs;
/// Create a copy of AvailableLlmsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailableLlmsStateCopyWith<AvailableLlmsState> get copyWith => _$AvailableLlmsStateCopyWithImpl<AvailableLlmsState>(this as AvailableLlmsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableLlmsState&&(identical(other.op, op) || other.op == op)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.availableLLMs, availableLLMs));
}


@override
int get hashCode => Object.hash(runtimeType,op,message,const DeepCollectionEquality().hash(availableLLMs));

@override
String toString() {
  return 'AvailableLlmsState(op: $op, message: $message, availableLLMs: $availableLLMs)';
}


}

/// @nodoc
abstract mixin class $AvailableLlmsStateCopyWith<$Res>  {
  factory $AvailableLlmsStateCopyWith(AvailableLlmsState value, $Res Function(AvailableLlmsState) _then) = _$AvailableLlmsStateCopyWithImpl;
@useResult
$Res call({
 Operation op, String message, List<String> availableLLMs
});




}
/// @nodoc
class _$AvailableLlmsStateCopyWithImpl<$Res>
    implements $AvailableLlmsStateCopyWith<$Res> {
  _$AvailableLlmsStateCopyWithImpl(this._self, this._then);

  final AvailableLlmsState _self;
  final $Res Function(AvailableLlmsState) _then;

/// Create a copy of AvailableLlmsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? op = null,Object? message = null,Object? availableLLMs = null,}) {
  return _then(AvailableLlmsState(
op: null == op ? _self.op : op // ignore: cast_nullable_to_non_nullable
as Operation,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,availableLLMs: null == availableLLMs ? _self.availableLLMs : availableLLMs // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AvailableLlmsState].
extension AvailableLlmsStatePatterns on AvailableLlmsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvailableLlmsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvailableLlmsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvailableLlmsState value)  $default,){
final _that = this;
switch (_that) {
case _AvailableLlmsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvailableLlmsState value)?  $default,){
final _that = this;
switch (_that) {
case _AvailableLlmsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Operation op,  String message,  List<String> availableLLMs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvailableLlmsState() when $default != null:
return $default(_that.op,_that.message,_that.availableLLMs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Operation op,  String message,  List<String> availableLLMs)  $default,) {final _that = this;
switch (_that) {
case _AvailableLlmsState():
return $default(_that.op,_that.message,_that.availableLLMs);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Operation op,  String message,  List<String> availableLLMs)?  $default,) {final _that = this;
switch (_that) {
case _AvailableLlmsState() when $default != null:
return $default(_that.op,_that.message,_that.availableLLMs);case _:
  return null;

}
}

}

/// @nodoc


class _AvailableLlmsState implements AvailableLlmsState {
  const _AvailableLlmsState({required this.op, required this.message, required  List<String> availableLLMs}): _availableLLMs = availableLLMs;
  

@override final  Operation op;
@override final  String message;
 final  List<String> _availableLLMs;
@override List<String> get availableLLMs {
  if (_availableLLMs is EqualUnmodifiableListView) return _availableLLMs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableLLMs);
}


/// Create a copy of AvailableLlmsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvailableLlmsStateCopyWith<_AvailableLlmsState> get copyWith => __$AvailableLlmsStateCopyWithImpl<_AvailableLlmsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvailableLlmsState&&(identical(other.op, op) || other.op == op)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._availableLLMs, _availableLLMs));
}


@override
int get hashCode => Object.hash(runtimeType,op,message,const DeepCollectionEquality().hash(_availableLLMs));

@override
String toString() {
  return 'AvailableLlmsState(op: $op, message: $message, availableLLMs: $availableLLMs)';
}


}

/// @nodoc
abstract mixin class _$AvailableLlmsStateCopyWith<$Res> implements $AvailableLlmsStateCopyWith<$Res> {
  factory _$AvailableLlmsStateCopyWith(_AvailableLlmsState value, $Res Function(_AvailableLlmsState) _then) = __$AvailableLlmsStateCopyWithImpl;
@override @useResult
$Res call({
 Operation op, String message, List<String> availableLLMs
});




}
/// @nodoc
class __$AvailableLlmsStateCopyWithImpl<$Res>
    implements _$AvailableLlmsStateCopyWith<$Res> {
  __$AvailableLlmsStateCopyWithImpl(this._self, this._then);

  final _AvailableLlmsState _self;
  final $Res Function(_AvailableLlmsState) _then;

/// Create a copy of AvailableLlmsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? op = null,Object? message = null,Object? availableLLMs = null,}) {
  return _then(_AvailableLlmsState(
op: null == op ? _self.op : op // ignore: cast_nullable_to_non_nullable
as Operation,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,availableLLMs: null == availableLLMs ? _self._availableLLMs : availableLLMs // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
