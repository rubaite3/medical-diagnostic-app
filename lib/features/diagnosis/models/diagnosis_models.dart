import 'package:freezed_annotation/freezed_annotation.dart';

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
    @JsonKey(name: 'assessment_for') required String assessmentFor,
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
    required String id,
    required String name,
    required String description,
  }) = _Symptom;

  factory Symptom.fromJson(Map<String, dynamic> json) =>
      _$SymptomFromJson(json);
}

@freezed
abstract class QuestionOption with _$QuestionOption {
  const factory QuestionOption({
    required String id,
    required String label,
  }) = _QuestionOption;

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
    @JsonKey(name: 'selected_option_ids') required List<String> selectedOptionIds,
  }) = _SymptomAnswer;

  factory SymptomAnswer.fromJson(Map<String, dynamic> json) =>
      _$SymptomAnswerFromJson(json);
}

@freezed
abstract class SubmitSymptomAnswersRequest with _$SubmitSymptomAnswersRequest {
  const factory SubmitSymptomAnswersRequest({
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'symptom_id') required String symptomId,
    required List<SymptomAnswer> answers,
  }) = _SubmitSymptomAnswersRequest;

  factory SubmitSymptomAnswersRequest.fromJson(Map<String, dynamic> json) =>
      _$SubmitSymptomAnswersRequestFromJson(json);
}

@freezed
abstract class ProbableDisease with _$ProbableDisease {
  const factory ProbableDisease({
    required String name,
    required double probability,
    @JsonKey(name: 'color_code') required String colorCode,
  }) = _ProbableDisease;

  factory ProbableDisease.fromJson(Map<String, dynamic> json) =>
      _$ProbableDiseaseFromJson(json);
}

@freezed
abstract class DiagnosisSummary with _$DiagnosisSummary {
  const factory DiagnosisSummary({
    @JsonKey(name: 'probable_diseases') required List<ProbableDisease> probableDiseases,
  }) = _DiagnosisSummary;

  factory DiagnosisSummary.fromJson(Map<String, dynamic> json) =>
      _$DiagnosisSummaryFromJson(json);
}

@freezed
abstract class FollowUpResponse with _$FollowUpResponse {
  const factory FollowUpResponse({
    @JsonKey(name: 'response_type') required String responseType,
    Question? question,
    @JsonKey(name: 'diagnosis_summary') DiagnosisSummary? diagnosisSummary,
    required int total,
  }) = _FollowUpResponse;

  factory FollowUpResponse.fromJson(Map<String, dynamic> json) =>
      _$FollowUpResponseFromJson(json);
}

@freezed
abstract class SubmitFollowUpAnswerRequest with _$SubmitFollowUpAnswerRequest {
  const factory SubmitFollowUpAnswerRequest({
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'question_id') required String questionId,
    @JsonKey(name: 'selected_option_ids') required List<String> selectedOptionIds,
  }) = _SubmitFollowUpAnswerRequest;

  factory SubmitFollowUpAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$SubmitFollowUpAnswerRequestFromJson(json);
}
