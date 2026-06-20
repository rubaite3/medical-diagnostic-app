part of 'terms_cubit.dart';

@freezed
sealed class TermsState with _$TermsState {
  const factory TermsState({@Default(false) bool isChecked}) = _TermsState;
}
