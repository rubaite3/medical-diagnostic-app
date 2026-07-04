import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/enums/enums.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsState.initial());

  void changeLanguage(String language) {
    // يمكن إضافة الربط مع SharedPreferences أو Backend هنا مستقبلاً
    emit(state.copyWith(currentLanguage: language));
  }
  
  void deleteAccount() async {
    // تجهيز دالة حذف الحساب للربط مع Backend
    emit(state.copyWith(op: Operation.loading, statusMessage: 'Deleting account...'));
    // محاكاة الطلب
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(op: Operation.success, statusMessage: 'Account deleted successfully'));
  }
}