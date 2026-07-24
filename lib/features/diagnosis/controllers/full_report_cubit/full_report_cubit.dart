import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/enums.dart';
import '../../../../core/services/notification_service.dart';
import '../../../../main_exports.dart';
import '../../models/diagnosis_models.dart';
import '../../repos/diagnosis_repo.dart';

part 'full_report_state.dart';
part 'full_report_cubit.freezed.dart';

class FullReportCubit extends Cubit<FullReportState> {
  FullReportCubit({required this.sessionId, required this.repo})
    : super(FullReportState.initial());

  final String sessionId;
  final DiagnosisRepo repo;

  Future<void> loadReport() async {
    emit(
      state.copyWith(status: ReportStatus.loading, statusMessage: "loading"),
    );

    final result = await repo.getReport(sessionId);
    result.fold(
      (error) {
        emit(
          state.copyWith(
            status: ReportStatus.failure,
            statusMessage: error.errorMessage,
          ),
        );
      },
      (response) {
        final raw = response.data["message"];
        final decoded = raw is String ? jsonDecode(raw) : raw;
        emit(
          state.copyWith(
            status: ReportStatus.success,
            statusMessage: S.current.diagReportReady,
            finalReport: FinalReport.fromJson(
              Map<String, dynamic>.from(decoded),
            ),
          ),
        );
      },
    );
  }

  Future<void> downloadReport() async {
    emit(state.copyWith(isDownloading: true));
    final result = await repo.downloadReport(
      sessionId,
      onReceiveProgress: (count, total) {
        if (total > 0) {
          emit(state.copyWith(downloadProgress: count / total));
        }
      },
    );
    await result.fold(
      (error) async {
        emit(
          state.copyWith(
            isDownloading: false,
            status: ReportStatus.failure,
            statusMessage: error.errorMessage,
            downloadProgress: 0.0,
          ),
        );
      },
      (filePath) async {
        final granted = await NotificationService.instance.requestPermission();
        if (granted) {
          await NotificationService.instance.showPdfDownloaded(filePath);
        }
        emit(state.copyWith(isDownloading: false, downloadProgress: 0.0));
      },
    );
  }
}
