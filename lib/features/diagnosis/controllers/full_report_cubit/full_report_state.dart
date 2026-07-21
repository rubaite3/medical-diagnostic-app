part of 'full_report_cubit.dart';

enum ReportStatus { initial, loading, success, failure }

@freezed
sealed class FullReportState with _$FullReportState {
  const factory FullReportState({
    @Default(ReportStatus.initial) ReportStatus status,
    @Default("") String statusMessage,
    FinalReport? finalReport,
    required Operation op,
    @Default(false) bool isDownloading,
    @Default(0.0) double downloadProgress,
  }) = _FullReportState;

  factory FullReportState.initial() {
    return FullReportState(op: Operation.neutral);
  }
}
