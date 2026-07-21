import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loader_state.dart';
part 'loader_cubit.freezed.dart';

class LoaderCubit extends Cubit<LoaderState> {
  LoaderCubit() : super(LoaderState.initial());

  void show({String? message}) =>
      emit(state.copyWith(isLoading: true, message: message));
  void hide() => emit(state.copyWith(isLoading: false, message: null));
}
