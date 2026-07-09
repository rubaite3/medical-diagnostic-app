import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_state.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/models/diagnosis_models.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/repos/diagnosis_repo.dart';

class DiagnosisCubit extends Cubit<DiagnosisState> {
  final DiagnosisRepo _repo;

  DiagnosisCubit({required this._repo}) : super(const DiagnosisState());

  void reset() {
    emit(const DiagnosisState());
  }

  void updateBaseline({
    String? gender,
    String? activityLevel,
    bool? isSmoker,
    bool? hasDiabetes,
    bool? hasHypertension,
    bool? isPregnant,
  }) {
    emit(
      state.copyWith(
        gender: gender ?? state.gender,
        activityLevel: activityLevel ?? state.activityLevel,
        isSmoker: isSmoker ?? state.isSmoker,
        hasDiabetes: hasDiabetes ?? state.hasDiabetes,
        hasHypertension: hasHypertension ?? state.hasHypertension,
        isPregnant: isPregnant ?? state.isPregnant,
      ),
    );
  }

  Future<void> startDiagnosis() async {
    emit(
      state.copyWith(
        op: Operation.loading,
        statusMessage: "Starting diagnosis...",
      ),
    );

    final request = StartDiagnosisRequest(
      gender: state.gender ?? "male",
      isSmoker: state.isSmoker,
      hasDiabetes: state.hasDiabetes,
      hasHypertension: state.hasHypertension,
      isPregnant: state.isPregnant,
      activityLevel: state.activityLevel ?? "moderate",
      assessmentFor: "myself",
    );

    final result = await _repo.startDiagnosis(request);
    result.fold(
      (error) => emit(
        state.copyWith(
          op: Operation.failure,
          statusMessage: error.errorMessage,
        ),
      ),
      (response) {
        final data = StartDiagnosisResponse.fromJson(
          Map<String, dynamic>.from(response.data),
        );
        emit(
          state.copyWith(
            op: Operation.success,
            statusMessage: "Session started",
            sessionId: data.sessionId,
          ),
        );
      },
    );
  }

  Future<void> searchSymptoms(String query) async {
    if (query.isEmpty) {
      emit(state.copyWith(op: Operation.neutral, searchResults: []));
      return;
    }
    emit(state.copyWith(op: Operation.loading, statusMessage: "Searching..."));
    final result = await _repo.searchSymptoms(query);
    result.fold(
      (error) => emit(
        state.copyWith(
          op: Operation.failure,
          statusMessage: error.errorMessage,
        ),
      ),
      (response) {
        final list = (response.data as List)
            .map((e) => Symptom.fromJson(Map<String, dynamic>.from(e)))
            .toList();
        emit(
          state.copyWith(
            op: Operation.success,
            statusMessage: "Search completed",
            searchResults: list,
          ),
        );
      },
    );
  }

  Future<void> getSymptomQuestions(String symptomId) async {
    if (state.sessionId == null) return;
    emit(
      state.copyWith(
        op: Operation.loading,
        statusMessage: "Loading questions...",
      ),
    );
    final result = await _repo.getSymptomQuestions(state.sessionId!, symptomId);
    result.fold(
      (error) => emit(
        state.copyWith(
          op: Operation.failure,
          statusMessage: error.errorMessage,
        ),
      ),
      (response) {
        final list = (response.data as List)
            .map((e) => Question.fromJson(Map<String, dynamic>.from(e)))
            .toList();
        emit(
          state.copyWith(
            op: Operation.success,
            statusMessage: "Questions loaded",
            currentQuestions: list,
          ),
        );
      },
    );
  }

  Future<void> submitSymptomAnswers(
    String symptomId,
    List<SymptomAnswer> answers,
  ) async {
    if (state.sessionId == null) return;
    emit(
      state.copyWith(
        op: Operation.loading,
        statusMessage: "Submitting answers...",
      ),
    );
    final request = SubmitSymptomAnswersRequest(
      sessionId: state.sessionId!,
      symptomId: symptomId,
      answers: answers,
    );
    final result = await _repo.submitSymptomAnswers(request);
    result.fold(
      (error) => emit(
        state.copyWith(
          op: Operation.failure,
          statusMessage: error.errorMessage,
        ),
      ),
      (response) => emit(
        state.copyWith(
          op: Operation.success,
          statusMessage: "Answers submitted",
        ),
      ),
    );
  }

  Future<void> getNextFollowUp() async {
    if (state.sessionId == null) return;
    emit(
      state.copyWith(
        op: Operation.loading,
        statusMessage: "Loading next step...",
      ),
    );
    final result = await _repo.getNextFollowUp(state.sessionId!);
    result.fold(
      (error) => emit(
        state.copyWith(
          op: Operation.failure,
          statusMessage: error.errorMessage,
        ),
      ),
      (response) {
        final data = FollowUpResponse.fromJson(
          Map<String, dynamic>.from(response.data),
        );
        emit(
          state.copyWith(
            op: Operation.success,
            statusMessage: "Loaded",
            currentFollowUp: data,
            followUpTotal: data.total > 0 ? data.total : state.followUpTotal,
            followUpProgress: state.followUpProgress + 1,
          ),
        );
      },
    );
  }

  Future<void> submitFollowUpAnswer(
    String questionId,
    List<String> selectedIds,
  ) async {
    if (state.sessionId == null) return;
    emit(state.copyWith(op: Operation.loading, statusMessage: "Submitting..."));
    final request = SubmitFollowUpAnswerRequest(
      sessionId: state.sessionId!,
      questionId: questionId,
      selectedOptionIds: selectedIds,
    );
    final result = await _repo.submitFollowUpAnswer(request);
    result.fold(
      (error) => emit(
        state.copyWith(
          op: Operation.failure,
          statusMessage: error.errorMessage,
        ),
      ),
      (response) => emit(
        state.copyWith(
          op: Operation.success,
          statusMessage: "Answer submitted",
        ),
      ),
    );
  }

  Future<void> getReport() async {
    if (state.sessionId == null) return;
    emit(
      state.copyWith(
        op: Operation.loading,
        statusMessage: "Generating report...",
      ),
    );
    final result = await _repo.getReport(state.sessionId!);
    result.fold(
      (error) => emit(
        state.copyWith(
          op: Operation.failure,
          statusMessage: error.errorMessage,
        ),
      ),
      (response) => emit(
        state.copyWith(
          op: Operation.success,
          statusMessage: "Report ready",
          finalReport: Map<String, dynamic>.from(response.data),
        ),
      ),
    );
  }
}
