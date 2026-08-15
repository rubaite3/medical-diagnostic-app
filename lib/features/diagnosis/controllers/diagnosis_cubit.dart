import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/core/services/notification_service.dart';
import 'package:medical_diagnostic_app1/core/utils/utils.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/controllers/diagnosis_state.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/models/diagnosis_models.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/repos/diagnosis_repo.dart';
import 'package:medical_diagnostic_app1/generated/l10n.dart';
import 'package:medical_diagnostic_app1/main_exports.dart';

class DiagnosisCubit extends Cubit<DiagnosisState> {
  final DiagnosisRepo _repo;

  DiagnosisCubit({required this._repo}) : super(const DiagnosisState());

  void reset() {
    emit(const DiagnosisState());
  }

  void setSessionId(String sessionId) {
    emit(state.copyWith(sessionId: sessionId));
  }

  void setStripeClientSecret(String? clientSecret) {
    emit(state.copyWith(clientSecret: clientSecret));
  }

  void clearSearch() {
    emit(
      state.copyWith(
        searchOp: Operation.neutral,
        searchResults: const [],
        statusMessage: "",
      ),
    );
  }

  void updateBaseline({
    String? gender,
    String? activityLevel,
    bool? isSmoker,
    bool? hasDiabetes,
    bool? hasHypertension,
    bool? isPregnant,
    bool? isAlcoholic,
    String? patientJob,
    String? birthDate,
    String? bloodGroup,
    String? modelName,
  }) {
    emit(
      state.copyWith(
        gender: gender ?? state.gender,
        activityLevel: activityLevel ?? state.activityLevel,
        isSmoker: isSmoker ?? state.isSmoker,
        hasDiabetes: hasDiabetes ?? state.hasDiabetes,
        hasHypertension: hasHypertension ?? state.hasHypertension,
        isPregnant: isPregnant ?? state.isPregnant,
        isAlcoholic: isAlcoholic ?? state.isAlcoholic,
        patientJob: patientJob ?? state.patientJob,
        birthDate: birthDate ?? state.birthDate,
        bloodType: bloodGroup ?? state.bloodType,

        modelName: modelName,
      ),
    );
  }

  Future<void> startDiagnosis({
    StartDiagnosisRequest? startDiagnosisRequest,
  }) async {
    String? formattedBirthDate;
    if (state.birthDate != null && state.birthDate!.isNotEmpty) {
      formattedBirthDate = DateFormat(
        'MM/dd/yyyy',
      ).format(DateTime.parse(state.birthDate!));
    }

    final request =
        startDiagnosisRequest ??
        StartDiagnosisRequest(
          gender: state.gender ?? "male",
          isSmoker: state.isSmoker,
          hasDiabetes: state.hasDiabetes,
          hasHypertension: state.hasHypertension,
          isPregnant: state.isPregnant,
          activityLevel: state.activityLevel ?? "moderate",
          assessmentFor: "myself",
          isAlcoholic: state.isAlcoholic,
          patientJob: state.patientJob,
          birthDate: formattedBirthDate,
          bloodType: state.bloodType,
          modelName: state.modelName,
        );
    GetIt.instance<LoaderCubit>().show(message: S.current.diagStarting);
    emit(state.copyWith(op: Operation.loading));
    final result = await _repo.startDiagnosis(request);
    GetIt.instance<LoaderCubit>().hide();

    result.fold(
      (error) {
        emit(
          state.copyWith(
            op: Operation.failure,
            statusMessage: error.errorMessage,
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
      (response) {
        if (response.data["data"]["data"] == null) {
          emit(
            state.copyWith(
              op: Operation.failure,
              statusMessage: S.current.errorGeneral,
            ),
          );
        } else {
          final data = StartDiagnosisResponse.fromJson(
            Map<String, dynamic>.from(response.data["data"]["data"]),
          );
          emit(
            state.copyWith(
              op: Operation.success,
              statusMessage: S.current.diagSessionStarted,
              sessionId: data.sessionId,
            ),
          );
        }
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
    );
  }

  Future<void> searchSymptoms(String query) async {
    if (query.isEmpty) {
      emit(state.copyWith(searchOp: Operation.neutral, searchResults: []));
      return;
    }
    emit(
      state.copyWith(
        searchOp: Operation.loading,
        statusMessage: S.current.loadingText,
      ),
    );

    final result = await _repo.searchSymptoms(
      query,
      modelName: state.modelName ?? '',
    );
    result.fold(
      (error) {
        emit(
          state.copyWith(
            searchOp: Operation.failure,
            statusMessage: error.errorMessage,
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
      (response) {
        final list = (response.data["data"]["data"]["results"] as List)
            .map((e) => Symptom.fromJson(Map<String, dynamic>.from(e)))
            .toList();
        emit(
          state.copyWith(
            searchOp: Operation.success,
            statusMessage: S.current.diagSearchCompleted,
            searchResults: list,
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
    );
  }

  Future<void> selectSymptoms({List<Symptom>? symptoms}) async {
    if (state.op.isFailure) {
      getNextFollowUp();
    } else {
      String syms = '';
      for (var symptom in (state.selectedSymptoms ?? symptoms ?? [])) {
        syms += "${symptom.nameLocal ?? ""},";
      }
      emit(
        state.copyWith(
          selectedSymptoms: symptoms,
          currentFollowUpRequest: null,
        ),
      );
      GetIt.instance<LoaderCubit>().show();
      emit(state.copyWith(op: Operation.loading));
      final response = await _repo.selectSymptom(
        SelectSymptomRequest(
          name: syms.substring(0, syms.length - 1),
          sessionId: state.sessionId ?? "",
        ),
      );
      GetIt.instance<LoaderCubit>().hide();
      response.fold(
        (error) {
          emit(
            state.copyWith(
              op: Operation.failure,
              statusMessage: error.errorMessage,
            ),
          );
        },
        (response) {
          final followUpResponse = FollowUpResponse.fromJson(
            response.data["data"]["data"],
          );
          if (followUpResponse.question != null) {
            emit(
              state.copyWith(
                op: Operation.success,
                followUpProgress: state.followUpProgress + 1,
                currentFollowUp: followUpResponse,
              ),
            );
          }
          emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
        },
      );
    }
  }

  Future<void> getNextFollowUp() async {
    if (state.sessionId == null) return;

    GetIt.instance<LoaderCubit>().show();
    emit(state.copyWith(op: Operation.loading));
    if (state.currentFollowUpRequest != null) {
      submitFollowUpAnswer();
    } else if (state.selectedSymptoms != null) {
      selectSymptoms();
    } else {
      final result = await _repo.getNextFollowUp(state.sessionId!);
      GetIt.instance<LoaderCubit>().hide();

      result.fold(
        (error) {
          emit(
            state.copyWith(
              op: Operation.failure,
              statusMessage: error.errorMessage,
            ),
          );
          emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
        },
        (response) {
          final data = FollowUpResponse.fromJson(
            Map<String, dynamic>.from(response.data["data"]["data"]),
          );
          emit(
            state.copyWith(
              op: Operation.success,
              statusMessage: S.current.diagLoaded,
              currentFollowUp: data,
            ),
          );
          emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
        },
      );
    }
  }

  Future<void> submitFollowUpAnswer({
    String? questionId,
    String? answerId,
    bool isForce = false,
    String? customAnswer,
  }) async {
    if (state.sessionId == null) return;
    if (state.op.isFailure) {
      getNextFollowUp();
    } else {
      final String answer;
      if (customAnswer != null && customAnswer.isNotEmpty) {
        answer = customAnswer;
      } else {
        answer =
            (state.currentFollowUp?.question ??
                    Question(id: "", text: "", type: "", options: []))
                .options
                .where((option) {
                  return option.id == answerId;
                })
                .first
                .label;
      }
      final request = SubmitFollowUpAnswerRequest(
        forceDiagnosis: isForce,
        sessionId: state.sessionId!,
        questionId: questionId ?? "",
        answer: answer,
      );
      emit(
        state.copyWith(currentFollowUpRequest: request, selectedSymptoms: null),
      );
      GetIt.instance<LoaderCubit>().show();
      emit(state.copyWith(op: Operation.loading));
      final result = await _repo.submitFollowUpAnswer(
        state.currentFollowUpRequest ?? request,
      );

      GetIt.instance<LoaderCubit>().hide();

      result.fold(
        (error) {
          emit(
            state.copyWith(
              op: Operation.failure,
              statusMessage: error.errorMessage,
            ),
          );
        },
        (response) {
          final followUpResponse = FollowUpResponse.fromJson(
            response.data["data"]["data"],
          );
          if (followUpResponse.question != null) {
            emit(
              state.copyWith(
                currentFollowUp: followUpResponse,
                followUpProgress: state.followUpProgress + 1,
                op: Operation.success,
                statusMessage: S.current.diagAnswerSubmitted,
              ),
            );
          }
          emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
        },
      );
    }
  }

  Future<void> getReport() async {
    if (state.sessionId == null) return;
    GetIt.instance<LoaderCubit>().show();
    emit(state.copyWith(op: Operation.loading));
    final result = await _repo.getReport(state.sessionId!);
    GetIt.instance<LoaderCubit>().hide();
    result.fold(
      (error) {
        emit(
          state.copyWith(
            op: Operation.failure,
            statusMessage: error.errorMessage,
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
      (response) {
        final raw = response.data["message"];
        final decoded = raw is String ? jsonDecode(raw) : raw;
        emit(
          state.copyWith(
            op: Operation.success,
            statusMessage: S.current.diagReportReady,
            finalReport: FinalReport.fromJson(
              Map<String, dynamic>.from(decoded),
            ),
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
    );
  }

  Future<void> createPaymentIntent() async {
    if (state.sessionId == null) return;
    emit(state.copyWith(op: Operation.loading, statusMessage: ""));
    final result = await _repo.createPaymentIntent(state.sessionId!);
    result.fold(
      (error) {
        emit(
          state.copyWith(
            op: Operation.failure,
            statusMessage: error.errorMessage,
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
      (clientSecret) {
        emit(
          state.copyWith(
            op: Operation.neutral,
            // clientSecret: clientSecret,
            statusMessage: "",
          ),
        );
      },
    );
  }

  Future<void> getDiagnosisCost() async {
    if (state.sessionId == null) return;
    emit(state.copyWith(op: Operation.loading, statusMessage: ""));
    final result = await _repo.getPaymentCost(state.sessionId!);
    result.fold(
      (error) {
        emit(
          state.copyWith(
            op: Operation.failure,
            statusMessage: error.errorMessage,
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
      (response) {
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
    );
  }

  Future<void> downloadReport() async {
    if (state.sessionId == null) return;
    emit(state.copyWith(op: Operation.loading));
    final result = await _repo.downloadReport(
      state.sessionId!,
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
            op: Operation.failure,
            statusMessage: error.errorMessage,
            downloadProgress: 0.0,
          ),
        );
        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
      (filePath) async {
        final granted = await NotificationService.instance.requestPermission();
        if (granted) {
          await NotificationService.instance.showPdfDownloaded(filePath);
        }
        emit(state.copyWith(op: Operation.neutral, downloadProgress: 0.0));
      },
    );
  }
}
