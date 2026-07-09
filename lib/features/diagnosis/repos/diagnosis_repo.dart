import 'package:fpdart/fpdart.dart';
import 'package:medical_diagnostic_app1/core/api/app_error.dart';
import 'package:medical_diagnostic_app1/core/api/app_response.dart';
import 'package:medical_diagnostic_app1/core/api/dio_client.dart';
import 'package:medical_diagnostic_app1/core/consts/api_consts.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/models/diagnosis_models.dart';

class DiagnosisRepo {
  Future<Either<AppError, AppResponse>> startDiagnosis(
      StartDiagnosisRequest request) async {
    final response = await dioInstance.post(
      ApiConsts.diagnosisStart,
      data: request.toJson(),
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> searchSymptoms(String query) async {
    final response = await dioInstance.get(
      ApiConsts.diagnosisSearchSymptoms,
      queryParameters: {'query': query},
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> getSymptomQuestions(
      String sessionId, String symptomId) async {
    final response = await dioInstance.get(
      ApiConsts.diagnosisSymptomQuestions,
      queryParameters: {'session_id': sessionId, 'symptom_id': symptomId},
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> submitSymptomAnswers(
      SubmitSymptomAnswersRequest request) async {
    final response = await dioInstance.post(
      ApiConsts.diagnosisSubmitAnswers,
      data: request.toJson(),
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> getNextFollowUp(
      String sessionId) async {
    final response = await dioInstance.get(
      ApiConsts.diagnosisFollowUpNext,
      queryParameters: {'session_id': sessionId},
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> submitFollowUpAnswer(
      SubmitFollowUpAnswerRequest request) async {
    final response = await dioInstance.post(
      ApiConsts.diagnosisFollowUpAnswer,
      data: request.toJson(),
    );
    return Utils.mapStatusCodeToResponse(response);
  }

  Future<Either<AppError, AppResponse>> getReport(String sessionId) async {
    final response = await dioInstance.get(
      ApiConsts.diagnosisReport,
      queryParameters: {'session_id': sessionId},
    );
    return Utils.mapStatusCodeToResponse(response);
  }
}
