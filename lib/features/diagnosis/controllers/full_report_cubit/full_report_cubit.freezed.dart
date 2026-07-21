// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'full_report_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FullReportState implements DiagnosticableTreeMixin {

 ReportStatus get status; String get statusMessage; FinalReport? get finalReport; Operation get op; bool get isDownloading; double get downloadProgress;
/// Create a copy of FullReportState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FullReportStateCopyWith<FullReportState> get copyWith => _$FullReportStateCopyWithImpl<FullReportState>(this as FullReportState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FullReportState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('statusMessage', statusMessage))..add(DiagnosticsProperty('finalReport', finalReport))..add(DiagnosticsProperty('op', op))..add(DiagnosticsProperty('isDownloading', isDownloading))..add(DiagnosticsProperty('downloadProgress', downloadProgress));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FullReportState&&(identical(other.status, status) || other.status == status)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.finalReport, finalReport) || other.finalReport == finalReport)&&(identical(other.op, op) || other.op == op)&&(identical(other.isDownloading, isDownloading) || other.isDownloading == isDownloading)&&(identical(other.downloadProgress, downloadProgress) || other.downloadProgress == downloadProgress));
}


@override
int get hashCode => Object.hash(runtimeType,status,statusMessage,finalReport,op,isDownloading,downloadProgress);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FullReportState(status: $status, statusMessage: $statusMessage, finalReport: $finalReport, op: $op, isDownloading: $isDownloading, downloadProgress: $downloadProgress)';
}


}

/// @nodoc
abstract mixin class $FullReportStateCopyWith<$Res>  {
  factory $FullReportStateCopyWith(FullReportState value, $Res Function(FullReportState) _then) = _$FullReportStateCopyWithImpl;
@useResult
$Res call({
 ReportStatus status, String statusMessage, FinalReport? finalReport, Operation op, bool isDownloading, double downloadProgress
});


$FinalReportCopyWith<$Res>? get finalReport;

}
/// @nodoc
class _$FullReportStateCopyWithImpl<$Res>
    implements $FullReportStateCopyWith<$Res> {
  _$FullReportStateCopyWithImpl(this._self, this._then);

  final FullReportState _self;
  final $Res Function(FullReportState) _then;

/// Create a copy of FullReportState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? statusMessage = null,Object? finalReport = freezed,Object? op = null,Object? isDownloading = null,Object? downloadProgress = null,}) {
  return _then(FullReportState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReportStatus,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,finalReport: freezed == finalReport ? _self.finalReport : finalReport // ignore: cast_nullable_to_non_nullable
as FinalReport?,op: null == op ? _self.op : op // ignore: cast_nullable_to_non_nullable
as Operation,isDownloading: null == isDownloading ? _self.isDownloading : isDownloading // ignore: cast_nullable_to_non_nullable
as bool,downloadProgress: null == downloadProgress ? _self.downloadProgress : downloadProgress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of FullReportState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinalReportCopyWith<$Res>? get finalReport {
    if (_self.finalReport == null) {
    return null;
  }

  return $FinalReportCopyWith<$Res>(_self.finalReport!, (value) {
    return _then(_self.copyWith(finalReport: value));
  });
}
}


/// Adds pattern-matching-related methods to [FullReportState].
extension FullReportStatePatterns on FullReportState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FullReportState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FullReportState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FullReportState value)  $default,){
final _that = this;
switch (_that) {
case _FullReportState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FullReportState value)?  $default,){
final _that = this;
switch (_that) {
case _FullReportState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReportStatus status,  String statusMessage,  FinalReport? finalReport,  Operation op,  bool isDownloading,  double downloadProgress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FullReportState() when $default != null:
return $default(_that.status,_that.statusMessage,_that.finalReport,_that.op,_that.isDownloading,_that.downloadProgress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReportStatus status,  String statusMessage,  FinalReport? finalReport,  Operation op,  bool isDownloading,  double downloadProgress)  $default,) {final _that = this;
switch (_that) {
case _FullReportState():
return $default(_that.status,_that.statusMessage,_that.finalReport,_that.op,_that.isDownloading,_that.downloadProgress);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReportStatus status,  String statusMessage,  FinalReport? finalReport,  Operation op,  bool isDownloading,  double downloadProgress)?  $default,) {final _that = this;
switch (_that) {
case _FullReportState() when $default != null:
return $default(_that.status,_that.statusMessage,_that.finalReport,_that.op,_that.isDownloading,_that.downloadProgress);case _:
  return null;

}
}

}

/// @nodoc


class _FullReportState with DiagnosticableTreeMixin implements FullReportState {
  const _FullReportState({this.status = ReportStatus.initial, this.statusMessage = "", this.finalReport, required this.op, this.isDownloading = false, this.downloadProgress = 0.0});
  

@override@JsonKey() final  ReportStatus status;
@override@JsonKey() final  String statusMessage;
@override final  FinalReport? finalReport;
@override final  Operation op;
@override@JsonKey() final  bool isDownloading;
@override@JsonKey() final  double downloadProgress;

/// Create a copy of FullReportState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FullReportStateCopyWith<_FullReportState> get copyWith => __$FullReportStateCopyWithImpl<_FullReportState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'FullReportState'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('statusMessage', statusMessage))..add(DiagnosticsProperty('finalReport', finalReport))..add(DiagnosticsProperty('op', op))..add(DiagnosticsProperty('isDownloading', isDownloading))..add(DiagnosticsProperty('downloadProgress', downloadProgress));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FullReportState&&(identical(other.status, status) || other.status == status)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage)&&(identical(other.finalReport, finalReport) || other.finalReport == finalReport)&&(identical(other.op, op) || other.op == op)&&(identical(other.isDownloading, isDownloading) || other.isDownloading == isDownloading)&&(identical(other.downloadProgress, downloadProgress) || other.downloadProgress == downloadProgress));
}


@override
int get hashCode => Object.hash(runtimeType,status,statusMessage,finalReport,op,isDownloading,downloadProgress);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'FullReportState(status: $status, statusMessage: $statusMessage, finalReport: $finalReport, op: $op, isDownloading: $isDownloading, downloadProgress: $downloadProgress)';
}


}

/// @nodoc
abstract mixin class _$FullReportStateCopyWith<$Res> implements $FullReportStateCopyWith<$Res> {
  factory _$FullReportStateCopyWith(_FullReportState value, $Res Function(_FullReportState) _then) = __$FullReportStateCopyWithImpl;
@override @useResult
$Res call({
 ReportStatus status, String statusMessage, FinalReport? finalReport, Operation op, bool isDownloading, double downloadProgress
});


@override $FinalReportCopyWith<$Res>? get finalReport;

}
/// @nodoc
class __$FullReportStateCopyWithImpl<$Res>
    implements _$FullReportStateCopyWith<$Res> {
  __$FullReportStateCopyWithImpl(this._self, this._then);

  final _FullReportState _self;
  final $Res Function(_FullReportState) _then;

/// Create a copy of FullReportState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? statusMessage = null,Object? finalReport = freezed,Object? op = null,Object? isDownloading = null,Object? downloadProgress = null,}) {
  return _then(_FullReportState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReportStatus,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,finalReport: freezed == finalReport ? _self.finalReport : finalReport // ignore: cast_nullable_to_non_nullable
as FinalReport?,op: null == op ? _self.op : op // ignore: cast_nullable_to_non_nullable
as Operation,isDownloading: null == isDownloading ? _self.isDownloading : isDownloading // ignore: cast_nullable_to_non_nullable
as bool,downloadProgress: null == downloadProgress ? _self.downloadProgress : downloadProgress // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of FullReportState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinalReportCopyWith<$Res>? get finalReport {
    if (_self.finalReport == null) {
    return null;
  }

  return $FinalReportCopyWith<$Res>(_self.finalReport!, (value) {
    return _then(_self.copyWith(finalReport: value));
  });
}
}

// dart format on
