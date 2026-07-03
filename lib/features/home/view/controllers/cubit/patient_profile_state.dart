part of 'patient_profile_cubit.dart';

@freezed
sealed class PatientProfileState with _$PatientProfileState {
  const factory PatientProfileState({required User user}) =
      _PatientProfileState;
  factory PatientProfileState.initial({required User user}) {
    return PatientProfileState(user: user);
  }
}
