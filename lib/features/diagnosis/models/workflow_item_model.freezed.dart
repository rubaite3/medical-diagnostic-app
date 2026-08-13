// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workflow_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkflowItemModel {

 String? get key; String? get label; String? get status;@JsonKey(name: "completed_at") DateTime? get completedAt;
/// Create a copy of WorkflowItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkflowItemModelCopyWith<WorkflowItemModel> get copyWith => _$WorkflowItemModelCopyWithImpl<WorkflowItemModel>(this as WorkflowItemModel, _$identity);

  /// Serializes this WorkflowItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkflowItemModel&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&(identical(other.status, status) || other.status == status)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,label,status,completedAt);

@override
String toString() {
  return 'WorkflowItemModel(key: $key, label: $label, status: $status, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $WorkflowItemModelCopyWith<$Res>  {
  factory $WorkflowItemModelCopyWith(WorkflowItemModel value, $Res Function(WorkflowItemModel) _then) = _$WorkflowItemModelCopyWithImpl;
@useResult
$Res call({
 String? key, String? label, String? status,@JsonKey(name: "completed_at") DateTime? completedAt
});




}
/// @nodoc
class _$WorkflowItemModelCopyWithImpl<$Res>
    implements $WorkflowItemModelCopyWith<$Res> {
  _$WorkflowItemModelCopyWithImpl(this._self, this._then);

  final WorkflowItemModel _self;
  final $Res Function(WorkflowItemModel) _then;

/// Create a copy of WorkflowItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = freezed,Object? label = freezed,Object? status = freezed,Object? completedAt = freezed,}) {
  return _then(WorkflowItemModel(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkflowItemModel].
extension WorkflowItemModelPatterns on WorkflowItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkflowItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkflowItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkflowItemModel value)  $default,){
final _that = this;
switch (_that) {
case _WorkflowItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkflowItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _WorkflowItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? key,  String? label,  String? status, @JsonKey(name: "completed_at")  DateTime? completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkflowItemModel() when $default != null:
return $default(_that.key,_that.label,_that.status,_that.completedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? key,  String? label,  String? status, @JsonKey(name: "completed_at")  DateTime? completedAt)  $default,) {final _that = this;
switch (_that) {
case _WorkflowItemModel():
return $default(_that.key,_that.label,_that.status,_that.completedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? key,  String? label,  String? status, @JsonKey(name: "completed_at")  DateTime? completedAt)?  $default,) {final _that = this;
switch (_that) {
case _WorkflowItemModel() when $default != null:
return $default(_that.key,_that.label,_that.status,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkflowItemModel implements WorkflowItemModel {
   _WorkflowItemModel({this.key, this.label, this.status, @JsonKey(name: "completed_at") this.completedAt});
  factory _WorkflowItemModel.fromJson(Map<String, dynamic> json) => _$WorkflowItemModelFromJson(json);

@override final  String? key;
@override final  String? label;
@override final  String? status;
@override@JsonKey(name: "completed_at") final  DateTime? completedAt;

/// Create a copy of WorkflowItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkflowItemModelCopyWith<_WorkflowItemModel> get copyWith => __$WorkflowItemModelCopyWithImpl<_WorkflowItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkflowItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkflowItemModel&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&(identical(other.status, status) || other.status == status)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,label,status,completedAt);

@override
String toString() {
  return 'WorkflowItemModel(key: $key, label: $label, status: $status, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$WorkflowItemModelCopyWith<$Res> implements $WorkflowItemModelCopyWith<$Res> {
  factory _$WorkflowItemModelCopyWith(_WorkflowItemModel value, $Res Function(_WorkflowItemModel) _then) = __$WorkflowItemModelCopyWithImpl;
@override @useResult
$Res call({
 String? key, String? label, String? status,@JsonKey(name: "completed_at") DateTime? completedAt
});




}
/// @nodoc
class __$WorkflowItemModelCopyWithImpl<$Res>
    implements _$WorkflowItemModelCopyWith<$Res> {
  __$WorkflowItemModelCopyWithImpl(this._self, this._then);

  final _WorkflowItemModel _self;
  final $Res Function(_WorkflowItemModel) _then;

/// Create a copy of WorkflowItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = freezed,Object? label = freezed,Object? status = freezed,Object? completedAt = freezed,}) {
  return _then(_WorkflowItemModel(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
