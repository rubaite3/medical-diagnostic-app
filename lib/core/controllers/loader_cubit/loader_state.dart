part of 'loader_cubit.dart';

@freezed
sealed class LoaderState with _$LoaderState {
  const factory LoaderState({@Default(false) bool isLoading, String? message}) =
      _LoaderState;
  factory LoaderState.initial() {
    return LoaderState();
  }
}
