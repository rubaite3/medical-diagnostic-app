import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:medical_diagnostic_app1/core/controllers/loader_cubit.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/auth_repo.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/email_verification/resend_email_verification_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/general/login_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/general/register_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/password/forget_password_request.dart';

import '../../../../core/utils/utils.dart';
import '../../models/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  AuthBloc({required this._authRepo}) : super(AuthState.initial()) {
    _connectivityTimer = Timer.periodic(
      Duration(seconds: 30),
      (_) => _checkConnection(),
    );
    on<AuthEvent>((event, emit) {
      if (event.runtimeType != _AuthLoading) {
        GetIt.instance<LoaderCubit>().hide();
      }
    });
    on<_AuthLoading>(((_, emit) {
      GetIt.instance<LoaderCubit>().show();
      emit(state.copyWith(auth: Auth.loading));
    }));
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

    on<_Login>(_login);
    on<_Register>(_register);
    on<_Logout>(_logout);
  }

  Future<void> _login(_Login event, Emitter<AuthState> emit) async {
    add(_AuthLoading());
    final res = await _authRepo.login(event.loginRequest);
    GetIt.instance<LoaderCubit>().hide();
    switch (res) {
      case Right(value: final r):
        {
          emit(
            state.copyWith(
              token: r.data["data"]["access_token"],
              op: Operation.success,
              statusMessage: "Logged in successfully!",
              user: User.fromJson(r.data["data"]["user"]),
            ),
          );
          emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
        }
        break;
      case Left(value: final l):
        {
          emit(
            state.copyWith(
              op: Operation.failure,
              statusMessage: l.statusCode == 422
                  ? "Sorry , Email has already been taken!"
                  : l.errorMessage,
            ),
          );
          emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
        }
        break;
    }
  }

  Future<void> _register(_Register event, Emitter<AuthState> emit) async {
    add(_AuthLoading());
    final res = await _authRepo.register(event.registerRequest);
    GetIt.instance<LoaderCubit>().hide();
    switch (res) {
      case Right():
        {
          emit(
            state.copyWith(
              op: Operation.success,
              statusMessage: "Account created! check your email",
              user: User(email: event.registerRequest.email),
            ),
          );
          emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
        }
        break;
      case Left(value: final l):
        {
          emit(
            state.copyWith(
              op: Operation.failure,
              statusMessage: l.statusCode == 422
                  ? "Sorry , Email has already been taken!"
                  : l.errorMessage,
            ),
          );
          emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
        }
        break;
    }
  }

  Future<void> _checkConnection() async {
    final online = await Utils.hasInternet();
    if (online != _lastOnline) {
      _lastOnline = online;
      add(_ConnectivityToggeled(online));
      if (online) {
        // await _verifyToken(); // re-check with server
      }
    }
  }

  FutureOr<void> _logout(_Logout event, Emitter<AuthState> emit) async {
    add(_AuthLoading());
    final res = await _authRepo.logout();
    GetIt.instance<LoaderCubit>().hide();
    switch (res) {
      case Right():
        {
          emit(
            state.copyWith(
              op: Operation.success,
              statusMessage: "Logged out successfully!",
            ),
          );
          emit(AuthState.initial());
        }
        break;
      case Left(value: final l):
        {
          emit(
            state.copyWith(
              op: Operation.failure,
              statusMessage: l.errorMessage,
            ),
          );
          emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
        }
        break;
    }
  }

  @override
  Future<void> close() {
    _connectivityTimer?.cancel();
    return super.close();
  }

  final AuthRepo _authRepo;
  Timer? _connectivityTimer;
  bool _lastOnline = true;

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthState.initial();
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return {};
  }
}
