import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/core/services/cloudflare_provider.dart';

part 'available_llms_state.dart';
part 'available_llms_cubit.freezed.dart';

class AvailableLlmsCubit extends Cubit<AvailableLlmsState> {
  AvailableLlmsCubit() : super(AvailableLlmsState.initial());

  Future<void> loadLLMs() async {
    emit(state.copyWith(op: Operation.loading, message: "Loading LLMs"));

    final response = await CloudflareProvider().listModels();

    response.fold(
      (error) {
        emit(
          state.copyWith(op: Operation.failure, message: error.errorMessage),
        );
        emit(state.copyWith(op: Operation.neutral, message: ""));
      },
      (response) {
        emit(
          state.copyWith(
            op: Operation.success,
            message: "LLMs fetched successfully",
            availableLLMs: ((response.data['result'] as List?) ?? [])
                .where((llm) {
                  final name = (llm['name'] as String?) ?? '';
                  return name.contains('instruct') && !name.contains('vision');
                })
                .map((llm) => llm['name'] as String)
                .toList(),
          ),
        );
        emit(state.copyWith(op: Operation.neutral, message: ""));
      },
    );
  }
}
