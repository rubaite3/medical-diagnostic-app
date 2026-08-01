import 'dart:async';

import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:medical_diagnostic_app1/core/enums/enums.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/auth_repo.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/email_verification/resend_email_verification_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/general/login_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/general/register_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/password/forget_password_request.dart';
import 'package:medical_diagnostic_app1/features/auth/repos/requests/profile/update_profile_request.dart';

import '../../../../core/controllers/loader_cubit/loader_cubit.dart';
import '../../../../core/utils/utils.dart';
import '../../../../generated/l10n.dart';
import '../../models/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.g.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  AuthBloc({required this._authRepo}) : super(AuthState.initial()) {
    on<AuthEvent>((event, emit) {
      if (event.runtimeType != _AuthLoading) {
        GetIt.instance<LoaderCubit>().hide();
      }
    });
    on<_CheckConnectivity>((event, emit) {
      _connectivityTimer = Timer.periodic(Duration(seconds: 30), (_) async {
        await _checkConnection();
      });
    });

    on<_AuthLoading>(((_, emit) {
      GetIt.instance<LoaderCubit>().show();
      // emit(state.copyWith(op: Operation.loading));
    }));
    on<_ConnectivityToggeled>((event, emit) async {
      if (!event.isOnline) {
        emit(
          state.copyWith(
            statusMessage: S.current.authOffline,
            op: Operation.failure,
          ),
        );
        emit(
          state.copyWith(
            isOnline: event.isOnline,
            op: Operation.neutral,
            statusMessage: "",
          ),
        );
      } else if ((event.isOnline == true) && (state.isOnline == false)) {
        emit(
          state.copyWith(
            statusMessage: S.current.authOnlineRestored,
            op: Operation.success,
          ),
        );
        emit(
          state.copyWith(
            isOnline: event.isOnline,
            op: Operation.neutral,
            statusMessage: "",
          ),
        );
      }
    });
    on<_AuthToggeled>((event, emit) {
      if (state.isRecentlyLoggedIn) {
        emit(state.copyWith(isRecentlyLoggedIn: false));
      } else {
        if (event.user == null && !state.auth.isGuest) {
          emit(
            state.copyWith(
              statusMessage: S.current.authSessionExpired,
              op: Operation.failure,
            ),
          );
          emit(AuthState.initial());
        }
      }
    });

    on<_Login>(_login);
    on<_Register>(_register);
    on<_Logout>(_logout);
    on<_UpdateProfile>(_updateProfile);
    on<_GetProfile>(_getProfile);
  }

  bool isProfileNull() {
    return state.user == null ||
        (state.user?.gender == null ||
            state.user?.activityLevel == null ||
            state.user?.isSmoker == null ||
            state.user?.hasDiabetes == null ||
            state.user?.hasHypertension == null ||
            state.user?.occupation == null ||
            state.user?.drinksAlcohol == null);
  }

  Future<void> _login(_Login event, Emitter<AuthState> emit) async {
    GetIt.instance<LoaderCubit>().show();
    emit(state.copyWith(op: Operation.loading));
    final res = await _authRepo.login(event.loginRequest);
    GetIt.instance<LoaderCubit>().hide();
    switch (res) {
      case Right(value: final r):
        {
          emit(
            state.copyWith(
              auth: Auth.auth,
              token: r.data["data"]["access_token"],
              op: Operation.success,
              statusMessage: S.current.authLoggedInSuccess,
              user: User.fromJson(r.data["data"]["user"]),
            ),
          );
          emit(
            state.copyWith(
              op: Operation.neutral,
              statusMessage: "",
              isRecentlyLoggedIn: true,
            ),
          );
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

  Future<void> _register(_Register event, Emitter<AuthState> emit) async {
    GetIt.instance<LoaderCubit>().show();
    final res = await _authRepo.register(event.registerRequest);
    GetIt.instance<LoaderCubit>().hide();
    switch (res) {
      case Right():
        {
          emit(
            state.copyWith(
              op: Operation.success,
              statusMessage: S.current.authAccountCreated,
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
              statusMessage: l.errorMessage,
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
    }
    if (online) {
      await _checkAuth();
    } else {
      add(_ConnectivityToggeled(false));
    }
  }

  Future<void> _checkAuth() async {
    if (!state.op.isLoading) {
      final res = await _authRepo.checkAuthState();
      switch (res) {
        case Right():
          if (!state.auth.isAuth) {
            add(_AuthToggeled(state.user));
          }
        case Left(value: final l):
          if (l.statusCode == 401 && !state.auth.isGuest) {
            add(const _AuthToggeled(null));
          }
      }
    }
  }

  FutureOr<void> _logout(_Logout event, Emitter<AuthState> emit) async {
    GetIt.instance<LoaderCubit>().show();
    final res = await _authRepo.logout();
    GetIt.instance<LoaderCubit>().hide();
    switch (res) {
      case Right():
        {
          emit(
            state.copyWith(
              op: Operation.success,
              statusMessage: S.current.authLoggedOut,
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

  Future<void> _updateProfile(
    _UpdateProfile event,
    Emitter<AuthState> emit,
  ) async {
    GetIt.instance<LoaderCubit>().show();
    final res = await _authRepo.updateProfile(event.updateProfileRequest);
    GetIt.instance<LoaderCubit>().hide();
    switch (res) {
      case Right(value: final r):
        {
          emit(
            state.copyWith(
              op: Operation.success,
              statusMessage: S.current.authProfileUpdated,
              user: User.fromJson(r.data['data']),
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
              statusMessage: l.errorMessage,
            ),
          );
          emit(state.copyWith(op: Operation.neutral, statusMessage: ""));
        }
        break;
    }
  }

  FutureOr<void> _getProfile(_GetProfile event, Emitter<AuthState> emit) async {
    GetIt.instance<LoaderCubit>().show();
    final response = await _authRepo.viewProfile();
    GetIt.instance<LoaderCubit>().hide();
    response.fold((_) {}, (response) {
      emit(state.copyWith(user: User.fromJson(response.data["data"])));
    });
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
    return AuthState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) => state.toJson();
}
