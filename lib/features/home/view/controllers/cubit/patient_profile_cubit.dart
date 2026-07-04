import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../auth/models/user.dart';

part 'patient_profile_state.dart';
part 'patient_profile_cubit.freezed.dart';

class PatientProfileCubit extends Cubit<PatientProfileState> {
  PatientProfileCubit({required User user})
    : super(PatientProfileState.initial(user: user));

  void updateUser(User? user) {
    if (user != null) {
      emit(state.copyWith(user: user));
    }
  }
}
