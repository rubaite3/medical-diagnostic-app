import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:medical_diagnostic_app1/core/api/app_response.dart';
import 'package:medical_diagnostic_app1/core/api/dio_client.dart';
import 'package:medical_diagnostic_app1/core/consts/api_consts.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/core/navigation/app_router_exports.dart';
import 'package:medical_diagnostic_app1/main_exports.dart';

import '../../../../core/api/app_error.dart';

part 'session_history_state.dart';
part 'session_history_cubit.freezed.dart';

class SessionHistoryCubit extends Cubit<SessionHistoryState> {
  SessionHistoryCubit() : super(SessionHistoryState.initial());

  Future<void> fetchSessions() async {
    emit(state.copyWith(op: Operation.loading));
    final response = await _fetchSessions();
    response.fold(
      (error) {
        emit(
          state.copyWith(
            op: Operation.failure,
            statusMessage: error.errorMessage,
          ),
        );
        // emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
      (response) {
        emit(
          state.copyWith(
            op: Operation.success,
            statusMessage: response.statusMessage,
            sessions: (response.data["data"] as List<dynamic>).map((s) {
              return SessionHistoryItem.fromJson(s);
            }).toList(),
          ),
        );

        emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
      },
    );
  }

  Future<Either<AppError, AppResponse>> _fetchSessions() async {
    final response = await dioInstance.get(
      ApiConsts.diagnosisHistory,
      queryParameters: {'language_code': Intl.defaultLocale},
    );

    return Utils.mapStatusCodeToResponse(response);
  }
}
