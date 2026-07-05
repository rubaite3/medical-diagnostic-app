part of 'settings_cubit.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState({
    required String currentLanguage,
    required Operation op,
    required String statusMessage,
  }) = _SettingsState;

  factory SettingsState.initial() {
    return const SettingsState(
      currentLanguage: 'English (United States)',
      op: Operation.neutral,
      statusMessage: '',
    );
  }
}