import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/src/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medical_diagnostic_app1/core/api/app_error.dart';
import 'package:medical_diagnostic_app1/core/api/app_response.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/auth_repo.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/email_verification/resend_email_verification_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/general/login_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/general/register_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/password/forget_password_request.dart';

import '../../../../core/utils/utils.dart';
import '../../models/user.dart';
import '../../repos/requests/general/refresh_token_request.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this._authRepo}) : super(AuthState.initial()) {
    _connectivityTimer = Timer.periodic(
      Duration(seconds: 30),
      (_) => _checkConnection(),
    );
    on<_ConnectivityToggeled>((event, emit) {
      emit(state.copyWith(isOnline: event.isOnline));
    });
    on<_AuthToggeled>((event, emit) {
      emit(
        state.copyWith(
          auth: event.user == null ? Auth.guest : Auth.auth,
          user: event.user,
        ),
      );
    });
    on<_AuthLoading>(((_, emit) => emit(state.copyWith(auth: Auth.loading))));
    on<_Login>(_login);
  }

  Future<void> _login(_Login event, Emitter<AuthState> emit) async {
    final res = await _authRepo.login(event.loginRequest);
    final e = switch (res) {
      Right(value: final r) => state.copyWith(),
      Left(value: final l) => state.copyWith(auth: Auth.guest),
    };
  }

  Future<void> _checkConnection() async {
    final online = await hasInternet();
    if (online != _lastOnline) {
      _lastOnline = online;
      add(_ConnectivityToggeled(online));
      if (online) {
        // await _verifyToken(); // re-check with server
      }
    }
  }

  @override
  Future<void> close() {
    _connectivityTimer?.cancel();
    return super.close();
  }

  AuthRepo _authRepo;
  Timer? _connectivityTimer;
  bool _lastOnline = true;
}
