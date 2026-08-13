import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/models/diagnosis_models.dart';

part 'diagnosis_state.freezed.dart';

@freezed
abstract class DiagnosisState with _$DiagnosisState {
  const factory DiagnosisState({
    @Default(Operation.neutral) Operation op,
    @Default("") String statusMessage,
    String? gender,
    String? activityLevel,
    @Default(false) bool isSmoker,
    @Default(false) bool hasDiabetes,
    @Default(false) bool hasHypertension,
    @Default(false) bool isPregnant,
    @Default(false) bool? isAlcoholic,
    @Default("") String? patientJob,
    @Default("") String? birthDate,
    String? bloodType,

    String? sessionId,
    String? modelName,
    @Default(Operation.neutral) Operation searchOp,
    @Default([]) List<Symptom> searchResults,
    @Default([]) List<Question> currentQuestions,
    FollowUpResponse? currentFollowUp,
    @Default(0) int followUpProgress,
    @Default(0) int followUpTotal,
    FinalReport? finalReport,

    @Default(0.0) double downloadProgress,

    String? clientSecret,
  }) = _DiagnosisState;
}
