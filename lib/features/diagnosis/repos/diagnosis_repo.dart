import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medical_diagnostic_app1/core/api/app_error.dart';
import 'package:medical_diagnostic_app1/core/api/app_response.dart';
import 'package:medical_diagnostic_app1/core/api/dio_client.dart';
import 'package:medical_diagnostic_app1/core/consts/api_consts.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/models/diagnosis_models.dart';
import 'package:medical_diagnostic_app1/main_exports.dart';
import 'package:path_provider/path_provider.dart';

class DiagnosisRepo {
  DiagnosisRepo() {
    dioTimeoutInstance = dioInstance;
    dioTimeoutInstance.options.connectTimeout = Duration(seconds: 25);
    dioTimeoutInstance.options.receiveTimeout = Duration(seconds: 25);
    dioTimeoutInstance.options.sendTimeout = Duration(seconds: 25);
  }
  Future<Either<AppError, AppResponse>> startDiagnosis(
    StartDiagnosisRequest request,
  ) async {
    final response = await dioTimeoutInstance.post(
      ApiConsts.diagnosisStart,
      data: request,
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> searchSymptoms(String query) async {
    final response = await dioTimeoutInstance.get(
      ApiConsts.diagnosisSearchSymptoms,
      queryParameters: {'q': query},
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> selectSymptom(
    SelectSymptomRequest selectSymptomRequest,
  ) async {
    final response = await dioTimeoutInstance.post(
      ApiConsts.diagnosisSelectSymptoms,
      data: selectSymptomRequest,
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> getNextFollowUp(
    String sessionId,
  ) async {
    final response = await dioTimeoutInstance.get(
      ApiConsts.diagnosisFollowUpNext,
      queryParameters: {'session_id': sessionId},
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> submitFollowUpAnswer(
    SubmitFollowUpAnswerRequest request,
  ) async {
    final response = await dioTimeoutInstance.post(
      ApiConsts.diagnosisFollowUpAnswer,
      data: request.toJson(),
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> getReport(String sessionId) async {
    final response = await dioTimeoutInstance.get(
      "${ApiConsts.diagnosisReport}/$sessionId/preview",
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, String>> downloadReport(
    String sessionId, {
    void Function(int count, int total)? onReceiveProgress,
  }) async {
    late final Uint8List bytes;
    try {
      // The download endpoint returns a binary file (stream). Request it as
      // bytes so Dio gives us the raw PDF bytes instead of a ResponseBody
      // stream that is never consumed.
      final response = await dioInstance.get<Uint8List>(
        "${ApiConsts.diagnosisReport}/$sessionId/download",
        options: Options(responseType: ResponseType.bytes),
        onReceiveProgress: onReceiveProgress,
      );
      final status = response.statusCode ?? 500;
      if (status < 200 || status >= 300) {
        return Left(
          AppError(
            errorMessage: "Failed to download report",
            statusCode: status,
          ),
        );
      }
      bytes = response.data!;
    } on DioException catch (e) {
      return Left(
        AppError(
          errorMessage: e.message ?? "Download failed",
          statusCode: e.response?.statusCode ?? 500,
        ),
      );
    }

    // Prefer the public Downloads folder (visible in the file explorer); on
    // Android 10+ writing there may fail, so fall back to the app-private
    // documents directory which is always writable.
    String filePath;
    try {
      final dir = await getDownloadsDirectory();
      final target = dir ?? await getApplicationDocumentsDirectory();
      filePath = '${target.path}/vitalia_report_$sessionId.pdf';
      await File(filePath).writeAsBytes(bytes, flush: true);
    } on Object {
      final dir = await getApplicationDocumentsDirectory();
      filePath = '${dir.path}/vitalia_report_$sessionId.pdf';
      await File(filePath).writeAsBytes(bytes, flush: true);
    }

    return Right(filePath);
  }

  late final Dio dioTimeoutInstance;
}
