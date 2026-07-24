import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/core/services/stripe_service.dart';
import 'package:medical_diagnostic_app1/features/diagnosis/repos/diagnosis_repo.dart';

import '../../../../generated/l10n.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(String sessionId) : super(PaymentState.initial(sessionId));

  Future<void> createPaymentIntent() async {
    emit(state.copyWith(op: Operation.loading, statusMessage: ""));
    final result = await DiagnosisRepo().createPaymentIntent(state.sessionId);
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
      (response) async {
        emit(
          state.copyWith(
            op: Operation.neutral,
            clientSecret: response.data["data"]["client_secret"],
            statusMessage: "",
          ),
        );
        await pay();
      },
    );
  }

  Future<void> pay() async {
    emit(
      state.copyWith(
        op: Operation.loading,
        statusMessage: S.current.loadingText,
      ),
    );
    final result = await StripeService.instance.payWithClientSecret(
      state.clientSecret,
    );
    if (result.isSuccess) {
      emit(
        state.copyWith(
          op: Operation.success,
          statusMessage: "Payment Succeded!",
        ),
      );
      emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
    } else {
      emit(
        state.copyWith(
          op: Operation.failure,
          statusMessage: S.current.errorGeneral,
        ),
      );
      emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
    }
  }
}
