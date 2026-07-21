import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_diagnostic_app1/main_exports.dart';

import '../../utils/locale_to_from_json_converter.dart';

part 'locale_state.dart';
part 'locale_cubit.freezed.dart';
part 'locale_cubit.g.dart';

class LocaleCubit extends HydratedCubit<LocaleState> {
  LocaleCubit() : super(LocaleState.initial());

  void changeLocale(String code) async {
    if (S.delegate.supportedLocales.any((l) => l.languageCode == code)) {
      await S.load(Locale(code));
      emit(state.copyWith(locale: Locale(code)));
    }
  }

  @override
  LocaleState? fromJson(Map<String, dynamic> json) {
    return LocaleState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(LocaleState state) {
    return state.toJson();
  }
}
