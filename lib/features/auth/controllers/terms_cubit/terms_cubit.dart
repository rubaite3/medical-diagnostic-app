import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_state.dart';
part 'terms_cubit.freezed.dart';

class TermsCubit extends Cubit<TermsState> {
  TermsCubit() : super(TermsState());

  void toggle() {
    emit(TermsState(isChecked: !state.isChecked));
  }
}
