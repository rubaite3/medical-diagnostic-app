import 'package:freezed_annotation/freezed_annotation.dart';

import 'doctor_model.dart';
import 'workflow_item_model.dart';

part 'diagnosis_models.freezed.dart';
part 'diagnosis_models.g.dart';

@freezed
abstract class StartDiagnosisRequest with _$StartDiagnosisRequest {
  const factory StartDiagnosisRequest({
    required String gender,
    @JsonKey(name: 'is_smoker') required bool isSmoker,
    @JsonKey(name: 'has_diabetes') required bool hasDiabetes,
    @JsonKey(name: 'has_hypertension') required bool hasHypertension,
    @JsonKey(name: 'is_pregnant') bool? isPregnant,
    @JsonKey(name: 'activity_level') required String activityLevel,
    @Default("myself") @JsonKey(name: 'assessment_for') String assessmentFor,
    @JsonKey(name: 'is_alcoholic') bool? isAlcoholic,
    @JsonKey(name: 'patient_job') String? patientJob,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'blood_type') String? bloodType,
    @JsonKey(name: 'model_name') String? modelName,
  }) = _StartDiagnosisRequest;

  factory StartDiagnosisRequest.fromJson(Map<String, dynamic> json) =>
      _$StartDiagnosisRequestFromJson(json);
}

@freezed
abstract class StartDiagnosisResponse with _$StartDiagnosisResponse {
  const factory StartDiagnosisResponse({
    @JsonKey(name: 'session_id') required String sessionId,
  }) = _StartDiagnosisResponse;

  factory StartDiagnosisResponse.fromJson(Map<String, dynamic> json) =>
      _$StartDiagnosisResponseFromJson(json);
}

@freezed
abstract class Symptom with _$Symptom {
  const factory Symptom({
    int? id,
    @JsonKey(name: "name_en") String? nameEn,
    @JsonKey(name: "name_local") String? nameLocal,
    String? summary,
    String? type,
  }) = _Symptom;

  factory Symptom.fromJson(Map<String, dynamic> json) =>
      _$SymptomFromJson(json);
}

@freezed
abstract class QuestionOption with _$QuestionOption {
  const factory QuestionOption({required String id, required String label}) =
      _QuestionOption;

  factory QuestionOption.fromJson(Map<String, dynamic> json) =>
      _$QuestionOptionFromJson(json);
}

@freezed
abstract class Question with _$Question {
  const factory Question({
    required String id,
    required String text,
    required String type,
    required List<QuestionOption> options,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
abstract class SymptomAnswer with _$SymptomAnswer {
  const factory SymptomAnswer({
    @JsonKey(name: 'question_id') required String questionId,
    @JsonKey(name: 'selected_option_ids')
    required List<String> selectedOptionIds,
  }) = _SymptomAnswer;

  factory SymptomAnswer.fromJson(Map<String, dynamic> json) =>
      _$SymptomAnswerFromJson(json);
}

@freezed
abstract class SelectSymptomRequest with _$SelectSymptomRequest {
  const factory SelectSymptomRequest({
    required String name,
    @JsonKey(name: "session_id") required String sessionId,
  }) = _SelectSymptomRequest;

  factory SelectSymptomRequest.fromJson(Map<String, dynamic> json) =>
      _$SelectSymptomRequestFromJson(json);
}

@freezed
abstract class ProbableDisease with _$ProbableDisease {
  const factory ProbableDisease({
    @JsonKey(name: "disease_name") String? diseaseName,
    @JsonKey(name: "disease_name_local") String? diseaseNameLocal,
    double? probability,
    String? confidence,
    String? specialist,
    String? advice,
  }) = _ProbableDisease;

  factory ProbableDisease.fromJson(Map<String, dynamic> json) =>
      _$ProbableDiseaseFromJson(json);
}

@freezed
abstract class DiagnosisSummary with _$DiagnosisSummary {
  const factory DiagnosisSummary({required List<ProbableDisease> diagnoses}) =
      _DiagnosisSummary;

  factory DiagnosisSummary.fromJson(Map<String, dynamic> json) =>
      _$DiagnosisSummaryFromJson(json);
}

@freezed
abstract class FollowUpResponse with _$FollowUpResponse {
  const factory FollowUpResponse({
    @Default("question") @JsonKey(name: 'response_type') String responseType,
    Question? question,
    @JsonKey(name: 'diagnosis_summary') DiagnosisSummary? diagnosisSummary,
    int? total,
  }) = _FollowUpResponse;

  factory FollowUpResponse.fromJson(Map<String, dynamic> json) =>
      _$FollowUpResponseFromJson(json);
}

@freezed
abstract class SubmitFollowUpAnswerRequest with _$SubmitFollowUpAnswerRequest {
  const factory SubmitFollowUpAnswerRequest({
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'question_id') required String questionId,
    required String answer,
    @JsonKey(name: 'force_diagnosis') @Default(false) bool forceDiagnosis,
  }) = _SubmitFollowUpAnswerRequest;

  factory SubmitFollowUpAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$SubmitFollowUpAnswerRequestFromJson(json);
}

@freezed
abstract class ConversationTurn with _$ConversationTurn {
  const factory ConversationTurn({String? role, String? text}) =
      _ConversationTurn;

  factory ConversationTurn.fromJson(Map<String, dynamic> json) =>
      _$ConversationTurnFromJson(json);
}

@freezed
abstract class Diagnosis with _$Diagnosis {
  const factory Diagnosis({
    @JsonKey(name: "disease_name") String? diseaseName,
    double? probability,
    String? confidence,
    String? specialist,
    String? advice,
    @JsonKey(name: "disease_name_local") String? diseaseNameLocal,
    @JsonKey(name: "specialist_local") String? specialistLocal,
    @JsonKey(name: "advice_local") String? adviceLocal,
  }) = _Diagnosis;

  factory Diagnosis.fromJson(Map<String, dynamic> json) =>
      _$DiagnosisFromJson(json);
}

@freezed
abstract class DiagnosisSessionModel with _$DiagnosisSessionModel {
  const factory DiagnosisSessionModel({
    int? id,
    @JsonKey(name: "session_hash") String? sessionHash,
    String? status,
    String? phase,
    @JsonKey(name: "started_at") DateTime? startedAt,
    @JsonKey(name: "completed_at") DateTime? completedAt,
    @JsonKey(name: "ai_result") @Default([]) List<Diagnosis> diagnoses,
  }) = _DiagnosisSessionModel;

  factory DiagnosisSessionModel.fromJson(Map<String, dynamic> json) =>
      _$DiagnosisSessionModelFromJson(json);
}

@freezed
abstract class FinalReport with _$FinalReport {
  const factory FinalReport({
    DiagnosisSessionModel? session,
    @JsonKey(name: "started_at") String? startedAt,
    DoctorModel? doctor,
    @JsonKey(name: "completed_at") String? completedAt,
    @JsonKey(name: "workflow_steps") List<WorkflowItemModel>? workflowSteps,
  }) = _FinalReport;

  factory FinalReport.fromJson(Map<String, dynamic> json) =>
      _$FinalReportFromJson(json);
}

@freezed
abstract class SessionHistoryItem with _$SessionHistoryItem {
  const factory SessionHistoryItem({
    String? id,
    @JsonKey(name: 'created_at') String? createdAt,
    String? status,
    @JsonKey(name: 'top_disease') String? topDisease,
    @JsonKey(name: 'top_probability') double? topProbability,
  }) = _SessionHistoryItem;

  factory SessionHistoryItem.fromJson(Map<String, dynamic> json) =>
      _$SessionHistoryItemFromJson(json);
}
