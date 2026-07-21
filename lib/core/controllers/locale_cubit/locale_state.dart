part of 'locale_cubit.dart';

@freezed
sealed class LocaleState with _$LocaleState {
  const factory LocaleState({
    @LocaleToFromJsonConverter() required Locale locale,
  }) = _LocaleState;
  factory LocaleState.initial() {
    return LocaleState(locale: Locale(Platform.localeName.substring(0, 2)));
  }

  factory LocaleState.fromJson(Map<String, dynamic> json) =>
      _$LocaleStateFromJson(json);
}
