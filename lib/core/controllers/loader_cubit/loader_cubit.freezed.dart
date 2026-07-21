// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loader_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoaderState {

 bool get isLoading; String? get message;
/// Create a copy of LoaderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoaderStateCopyWith<LoaderState> get copyWith => _$LoaderStateCopyWithImpl<LoaderState>(this as LoaderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoaderState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,message);

@override
String toString() {
  return 'LoaderState(isLoading: $isLoading, message: $message)';
}


}

/// @nodoc
abstract mixin class $LoaderStateCopyWith<$Res>  {
  factory $LoaderStateCopyWith(LoaderState value, $Res Function(LoaderState) _then) = _$LoaderStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? message
});




}
/// @nodoc
class _$LoaderStateCopyWithImpl<$Res>
    implements $LoaderStateCopyWith<$Res> {
  _$LoaderStateCopyWithImpl(this._self, this._then);

  final LoaderState _self;
  final $Res Function(LoaderState) _then;

/// Create a copy of LoaderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? message = freezed,}) {
  return _then(LoaderState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoaderState].
extension LoaderStatePatterns on LoaderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoaderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoaderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoaderState value)  $default,){
final _that = this;
switch (_that) {
case _LoaderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoaderState value)?  $default,){
final _that = this;
switch (_that) {
case _LoaderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoaderState() when $default != null:
return $default(_that.isLoading,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? message)  $default,) {final _that = this;
switch (_that) {
case _LoaderState():
return $default(_that.isLoading,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _LoaderState() when $default != null:
return $default(_that.isLoading,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _LoaderState implements LoaderState {
  const _LoaderState({this.isLoading = false, this.message});
  

@override@JsonKey() final  bool isLoading;
@override final  String? message;

/// Create a copy of LoaderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoaderStateCopyWith<_LoaderState> get copyWith => __$LoaderStateCopyWithImpl<_LoaderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoaderState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,message);

@override
String toString() {
  return 'LoaderState(isLoading: $isLoading, message: $message)';
}


}

/// @nodoc
abstract mixin class _$LoaderStateCopyWith<$Res> implements $LoaderStateCopyWith<$Res> {
  factory _$LoaderStateCopyWith(_LoaderState value, $Res Function(_LoaderState) _then) = __$LoaderStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? message
});




}
/// @nodoc
class __$LoaderStateCopyWithImpl<$Res>
    implements _$LoaderStateCopyWith<$Res> {
  __$LoaderStateCopyWithImpl(this._self, this._then);

  final _LoaderState _self;
  final $Res Function(_LoaderState) _then;

/// Create a copy of LoaderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? message = freezed,}) {
  return _then(_LoaderState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
