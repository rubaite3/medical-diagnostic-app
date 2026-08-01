// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ConnectivityToggeled value)?  connectivityToggeled,TResult Function( _AuthToggeled value)?  authToggeled,TResult Function( _AuthLoading value)?  authLoading,TResult Function( _Login value)?  login,TResult Function( _Logout value)?  logout,TResult Function( _CheckConnectivity value)?  checkConnectivity,TResult Function( _Register value)?  register,TResult Function( _RefreshToken value)?  refreshToken,TResult Function( _ToggleIsRecentlyLoggedIn value)?  toggleIsRecentlyLoggedIn,TResult Function( _ResendEmailVerification value)?  resendEmailVerify,TResult Function( _ForgotPass value)?  forgotPass,TResult Function( _UpdateProfile value)?  updateProfile,TResult Function( _GetProfile value)?  getProfile,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConnectivityToggeled() when connectivityToggeled != null:
return connectivityToggeled(_that);case _AuthToggeled() when authToggeled != null:
return authToggeled(_that);case _AuthLoading() when authLoading != null:
return authLoading(_that);case _Login() when login != null:
return login(_that);case _Logout() when logout != null:
return logout(_that);case _CheckConnectivity() when checkConnectivity != null:
return checkConnectivity(_that);case _Register() when register != null:
return register(_that);case _RefreshToken() when refreshToken != null:
return refreshToken(_that);case _ToggleIsRecentlyLoggedIn() when toggleIsRecentlyLoggedIn != null:
return toggleIsRecentlyLoggedIn(_that);case _ResendEmailVerification() when resendEmailVerify != null:
return resendEmailVerify(_that);case _ForgotPass() when forgotPass != null:
return forgotPass(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _GetProfile() when getProfile != null:
return getProfile(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ConnectivityToggeled value)  connectivityToggeled,required TResult Function( _AuthToggeled value)  authToggeled,required TResult Function( _AuthLoading value)  authLoading,required TResult Function( _Login value)  login,required TResult Function( _Logout value)  logout,required TResult Function( _CheckConnectivity value)  checkConnectivity,required TResult Function( _Register value)  register,required TResult Function( _RefreshToken value)  refreshToken,required TResult Function( _ToggleIsRecentlyLoggedIn value)  toggleIsRecentlyLoggedIn,required TResult Function( _ResendEmailVerification value)  resendEmailVerify,required TResult Function( _ForgotPass value)  forgotPass,required TResult Function( _UpdateProfile value)  updateProfile,required TResult Function( _GetProfile value)  getProfile,}){
final _that = this;
switch (_that) {
case _ConnectivityToggeled():
return connectivityToggeled(_that);case _AuthToggeled():
return authToggeled(_that);case _AuthLoading():
return authLoading(_that);case _Login():
return login(_that);case _Logout():
return logout(_that);case _CheckConnectivity():
return checkConnectivity(_that);case _Register():
return register(_that);case _RefreshToken():
return refreshToken(_that);case _ToggleIsRecentlyLoggedIn():
return toggleIsRecentlyLoggedIn(_that);case _ResendEmailVerification():
return resendEmailVerify(_that);case _ForgotPass():
return forgotPass(_that);case _UpdateProfile():
return updateProfile(_that);case _GetProfile():
return getProfile(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ConnectivityToggeled value)?  connectivityToggeled,TResult? Function( _AuthToggeled value)?  authToggeled,TResult? Function( _AuthLoading value)?  authLoading,TResult? Function( _Login value)?  login,TResult? Function( _Logout value)?  logout,TResult? Function( _CheckConnectivity value)?  checkConnectivity,TResult? Function( _Register value)?  register,TResult? Function( _RefreshToken value)?  refreshToken,TResult? Function( _ToggleIsRecentlyLoggedIn value)?  toggleIsRecentlyLoggedIn,TResult? Function( _ResendEmailVerification value)?  resendEmailVerify,TResult? Function( _ForgotPass value)?  forgotPass,TResult? Function( _UpdateProfile value)?  updateProfile,TResult? Function( _GetProfile value)?  getProfile,}){
final _that = this;
switch (_that) {
case _ConnectivityToggeled() when connectivityToggeled != null:
return connectivityToggeled(_that);case _AuthToggeled() when authToggeled != null:
return authToggeled(_that);case _AuthLoading() when authLoading != null:
return authLoading(_that);case _Login() when login != null:
return login(_that);case _Logout() when logout != null:
return logout(_that);case _CheckConnectivity() when checkConnectivity != null:
return checkConnectivity(_that);case _Register() when register != null:
return register(_that);case _RefreshToken() when refreshToken != null:
return refreshToken(_that);case _ToggleIsRecentlyLoggedIn() when toggleIsRecentlyLoggedIn != null:
return toggleIsRecentlyLoggedIn(_that);case _ResendEmailVerification() when resendEmailVerify != null:
return resendEmailVerify(_that);case _ForgotPass() when forgotPass != null:
return forgotPass(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _GetProfile() when getProfile != null:
return getProfile(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isOnline)?  connectivityToggeled,TResult Function( User? user)?  authToggeled,TResult Function()?  authLoading,TResult Function( LoginRequest loginRequest)?  login,TResult Function()?  logout,TResult Function()?  checkConnectivity,TResult Function( RegisterRequest registerRequest)?  register,TResult Function()?  refreshToken,TResult Function( bool isRecentlyLoggedIn)?  toggleIsRecentlyLoggedIn,TResult Function( ResendEmailVerificationRequest resendEmailVerificationRequest)?  resendEmailVerify,TResult Function( ForgetPasswordRequest forgetPasswordRequest)?  forgotPass,TResult Function( UpdateProfileRequest updateProfileRequest)?  updateProfile,TResult Function()?  getProfile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConnectivityToggeled() when connectivityToggeled != null:
return connectivityToggeled(_that.isOnline);case _AuthToggeled() when authToggeled != null:
return authToggeled(_that.user);case _AuthLoading() when authLoading != null:
return authLoading();case _Login() when login != null:
return login(_that.loginRequest);case _Logout() when logout != null:
return logout();case _CheckConnectivity() when checkConnectivity != null:
return checkConnectivity();case _Register() when register != null:
return register(_that.registerRequest);case _RefreshToken() when refreshToken != null:
return refreshToken();case _ToggleIsRecentlyLoggedIn() when toggleIsRecentlyLoggedIn != null:
return toggleIsRecentlyLoggedIn(_that.isRecentlyLoggedIn);case _ResendEmailVerification() when resendEmailVerify != null:
return resendEmailVerify(_that.resendEmailVerificationRequest);case _ForgotPass() when forgotPass != null:
return forgotPass(_that.forgetPasswordRequest);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.updateProfileRequest);case _GetProfile() when getProfile != null:
return getProfile();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isOnline)  connectivityToggeled,required TResult Function( User? user)  authToggeled,required TResult Function()  authLoading,required TResult Function( LoginRequest loginRequest)  login,required TResult Function()  logout,required TResult Function()  checkConnectivity,required TResult Function( RegisterRequest registerRequest)  register,required TResult Function()  refreshToken,required TResult Function( bool isRecentlyLoggedIn)  toggleIsRecentlyLoggedIn,required TResult Function( ResendEmailVerificationRequest resendEmailVerificationRequest)  resendEmailVerify,required TResult Function( ForgetPasswordRequest forgetPasswordRequest)  forgotPass,required TResult Function( UpdateProfileRequest updateProfileRequest)  updateProfile,required TResult Function()  getProfile,}) {final _that = this;
switch (_that) {
case _ConnectivityToggeled():
return connectivityToggeled(_that.isOnline);case _AuthToggeled():
return authToggeled(_that.user);case _AuthLoading():
return authLoading();case _Login():
return login(_that.loginRequest);case _Logout():
return logout();case _CheckConnectivity():
return checkConnectivity();case _Register():
return register(_that.registerRequest);case _RefreshToken():
return refreshToken();case _ToggleIsRecentlyLoggedIn():
return toggleIsRecentlyLoggedIn(_that.isRecentlyLoggedIn);case _ResendEmailVerification():
return resendEmailVerify(_that.resendEmailVerificationRequest);case _ForgotPass():
return forgotPass(_that.forgetPasswordRequest);case _UpdateProfile():
return updateProfile(_that.updateProfileRequest);case _GetProfile():
return getProfile();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isOnline)?  connectivityToggeled,TResult? Function( User? user)?  authToggeled,TResult? Function()?  authLoading,TResult? Function( LoginRequest loginRequest)?  login,TResult? Function()?  logout,TResult? Function()?  checkConnectivity,TResult? Function( RegisterRequest registerRequest)?  register,TResult? Function()?  refreshToken,TResult? Function( bool isRecentlyLoggedIn)?  toggleIsRecentlyLoggedIn,TResult? Function( ResendEmailVerificationRequest resendEmailVerificationRequest)?  resendEmailVerify,TResult? Function( ForgetPasswordRequest forgetPasswordRequest)?  forgotPass,TResult? Function( UpdateProfileRequest updateProfileRequest)?  updateProfile,TResult? Function()?  getProfile,}) {final _that = this;
switch (_that) {
case _ConnectivityToggeled() when connectivityToggeled != null:
return connectivityToggeled(_that.isOnline);case _AuthToggeled() when authToggeled != null:
return authToggeled(_that.user);case _AuthLoading() when authLoading != null:
return authLoading();case _Login() when login != null:
return login(_that.loginRequest);case _Logout() when logout != null:
return logout();case _CheckConnectivity() when checkConnectivity != null:
return checkConnectivity();case _Register() when register != null:
return register(_that.registerRequest);case _RefreshToken() when refreshToken != null:
return refreshToken();case _ToggleIsRecentlyLoggedIn() when toggleIsRecentlyLoggedIn != null:
return toggleIsRecentlyLoggedIn(_that.isRecentlyLoggedIn);case _ResendEmailVerification() when resendEmailVerify != null:
return resendEmailVerify(_that.resendEmailVerificationRequest);case _ForgotPass() when forgotPass != null:
return forgotPass(_that.forgetPasswordRequest);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.updateProfileRequest);case _GetProfile() when getProfile != null:
return getProfile();case _:
  return null;

}
}

}

/// @nodoc


class _ConnectivityToggeled implements AuthEvent {
  const _ConnectivityToggeled(this.isOnline);
  

 final  bool isOnline;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectivityToggeledCopyWith<_ConnectivityToggeled> get copyWith => __$ConnectivityToggeledCopyWithImpl<_ConnectivityToggeled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectivityToggeled&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline));
}


@override
int get hashCode => Object.hash(runtimeType,isOnline);

@override
String toString() {
  return 'AuthEvent.connectivityToggeled(isOnline: $isOnline)';
}


}

/// @nodoc
abstract mixin class _$ConnectivityToggeledCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$ConnectivityToggeledCopyWith(_ConnectivityToggeled value, $Res Function(_ConnectivityToggeled) _then) = __$ConnectivityToggeledCopyWithImpl;
@useResult
$Res call({
 bool isOnline
});




}
/// @nodoc
class __$ConnectivityToggeledCopyWithImpl<$Res>
    implements _$ConnectivityToggeledCopyWith<$Res> {
  __$ConnectivityToggeledCopyWithImpl(this._self, this._then);

  final _ConnectivityToggeled _self;
  final $Res Function(_ConnectivityToggeled) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isOnline = null,}) {
  return _then(_ConnectivityToggeled(
null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _AuthToggeled implements AuthEvent {
  const _AuthToggeled(this.user);
  

 final  User? user;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthToggeledCopyWith<_AuthToggeled> get copyWith => __$AuthToggeledCopyWithImpl<_AuthToggeled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthToggeled&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthEvent.authToggeled(user: $user)';
}


}

/// @nodoc
abstract mixin class _$AuthToggeledCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$AuthToggeledCopyWith(_AuthToggeled value, $Res Function(_AuthToggeled) _then) = __$AuthToggeledCopyWithImpl;
@useResult
$Res call({
 User? user
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$AuthToggeledCopyWithImpl<$Res>
    implements _$AuthToggeledCopyWith<$Res> {
  __$AuthToggeledCopyWithImpl(this._self, this._then);

  final _AuthToggeled _self;
  final $Res Function(_AuthToggeled) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_AuthToggeled(
freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _AuthLoading implements AuthEvent {
  const _AuthLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.authLoading()';
}


}




/// @nodoc


class _Login implements AuthEvent {
  const _Login(this.loginRequest);
  

 final  LoginRequest loginRequest;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginCopyWith<_Login> get copyWith => __$LoginCopyWithImpl<_Login>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Login&&(identical(other.loginRequest, loginRequest) || other.loginRequest == loginRequest));
}


@override
int get hashCode => Object.hash(runtimeType,loginRequest);

@override
String toString() {
  return 'AuthEvent.login(loginRequest: $loginRequest)';
}


}

/// @nodoc
abstract mixin class _$LoginCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) _then) = __$LoginCopyWithImpl;
@useResult
$Res call({
 LoginRequest loginRequest
});


$LoginRequestCopyWith<$Res> get loginRequest;

}
/// @nodoc
class __$LoginCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(this._self, this._then);

  final _Login _self;
  final $Res Function(_Login) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loginRequest = null,}) {
  return _then(_Login(
null == loginRequest ? _self.loginRequest : loginRequest // ignore: cast_nullable_to_non_nullable
as LoginRequest,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginRequestCopyWith<$Res> get loginRequest {
  
  return $LoginRequestCopyWith<$Res>(_self.loginRequest, (value) {
    return _then(_self.copyWith(loginRequest: value));
  });
}
}

/// @nodoc


class _Logout implements AuthEvent {
  const _Logout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Logout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logout()';
}


}




/// @nodoc


class _CheckConnectivity implements AuthEvent {
  const _CheckConnectivity();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckConnectivity);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.checkConnectivity()';
}


}




/// @nodoc


class _Register implements AuthEvent {
  const _Register(this.registerRequest);
  

 final  RegisterRequest registerRequest;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterCopyWith<_Register> get copyWith => __$RegisterCopyWithImpl<_Register>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Register&&(identical(other.registerRequest, registerRequest) || other.registerRequest == registerRequest));
}


@override
int get hashCode => Object.hash(runtimeType,registerRequest);

@override
String toString() {
  return 'AuthEvent.register(registerRequest: $registerRequest)';
}


}

/// @nodoc
abstract mixin class _$RegisterCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) _then) = __$RegisterCopyWithImpl;
@useResult
$Res call({
 RegisterRequest registerRequest
});


$RegisterRequestCopyWith<$Res> get registerRequest;

}
/// @nodoc
class __$RegisterCopyWithImpl<$Res>
    implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(this._self, this._then);

  final _Register _self;
  final $Res Function(_Register) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? registerRequest = null,}) {
  return _then(_Register(
null == registerRequest ? _self.registerRequest : registerRequest // ignore: cast_nullable_to_non_nullable
as RegisterRequest,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegisterRequestCopyWith<$Res> get registerRequest {
  
  return $RegisterRequestCopyWith<$Res>(_self.registerRequest, (value) {
    return _then(_self.copyWith(registerRequest: value));
  });
}
}

/// @nodoc


class _RefreshToken implements AuthEvent {
  const _RefreshToken();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshToken);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.refreshToken()';
}


}




/// @nodoc


class _ToggleIsRecentlyLoggedIn implements AuthEvent {
  const _ToggleIsRecentlyLoggedIn(this.isRecentlyLoggedIn);
  

 final  bool isRecentlyLoggedIn;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleIsRecentlyLoggedInCopyWith<_ToggleIsRecentlyLoggedIn> get copyWith => __$ToggleIsRecentlyLoggedInCopyWithImpl<_ToggleIsRecentlyLoggedIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleIsRecentlyLoggedIn&&(identical(other.isRecentlyLoggedIn, isRecentlyLoggedIn) || other.isRecentlyLoggedIn == isRecentlyLoggedIn));
}


@override
int get hashCode => Object.hash(runtimeType,isRecentlyLoggedIn);

@override
String toString() {
  return 'AuthEvent.toggleIsRecentlyLoggedIn(isRecentlyLoggedIn: $isRecentlyLoggedIn)';
}


}

/// @nodoc
abstract mixin class _$ToggleIsRecentlyLoggedInCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$ToggleIsRecentlyLoggedInCopyWith(_ToggleIsRecentlyLoggedIn value, $Res Function(_ToggleIsRecentlyLoggedIn) _then) = __$ToggleIsRecentlyLoggedInCopyWithImpl;
@useResult
$Res call({
 bool isRecentlyLoggedIn
});




}
/// @nodoc
class __$ToggleIsRecentlyLoggedInCopyWithImpl<$Res>
    implements _$ToggleIsRecentlyLoggedInCopyWith<$Res> {
  __$ToggleIsRecentlyLoggedInCopyWithImpl(this._self, this._then);

  final _ToggleIsRecentlyLoggedIn _self;
  final $Res Function(_ToggleIsRecentlyLoggedIn) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isRecentlyLoggedIn = null,}) {
  return _then(_ToggleIsRecentlyLoggedIn(
null == isRecentlyLoggedIn ? _self.isRecentlyLoggedIn : isRecentlyLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ResendEmailVerification implements AuthEvent {
  const _ResendEmailVerification(this.resendEmailVerificationRequest);
  

 final  ResendEmailVerificationRequest resendEmailVerificationRequest;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResendEmailVerificationCopyWith<_ResendEmailVerification> get copyWith => __$ResendEmailVerificationCopyWithImpl<_ResendEmailVerification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendEmailVerification&&(identical(other.resendEmailVerificationRequest, resendEmailVerificationRequest) || other.resendEmailVerificationRequest == resendEmailVerificationRequest));
}


@override
int get hashCode => Object.hash(runtimeType,resendEmailVerificationRequest);

@override
String toString() {
  return 'AuthEvent.resendEmailVerify(resendEmailVerificationRequest: $resendEmailVerificationRequest)';
}


}

/// @nodoc
abstract mixin class _$ResendEmailVerificationCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$ResendEmailVerificationCopyWith(_ResendEmailVerification value, $Res Function(_ResendEmailVerification) _then) = __$ResendEmailVerificationCopyWithImpl;
@useResult
$Res call({
 ResendEmailVerificationRequest resendEmailVerificationRequest
});


$ResendEmailVerificationRequestCopyWith<$Res> get resendEmailVerificationRequest;

}
/// @nodoc
class __$ResendEmailVerificationCopyWithImpl<$Res>
    implements _$ResendEmailVerificationCopyWith<$Res> {
  __$ResendEmailVerificationCopyWithImpl(this._self, this._then);

  final _ResendEmailVerification _self;
  final $Res Function(_ResendEmailVerification) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? resendEmailVerificationRequest = null,}) {
  return _then(_ResendEmailVerification(
null == resendEmailVerificationRequest ? _self.resendEmailVerificationRequest : resendEmailVerificationRequest // ignore: cast_nullable_to_non_nullable
as ResendEmailVerificationRequest,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResendEmailVerificationRequestCopyWith<$Res> get resendEmailVerificationRequest {
  
  return $ResendEmailVerificationRequestCopyWith<$Res>(_self.resendEmailVerificationRequest, (value) {
    return _then(_self.copyWith(resendEmailVerificationRequest: value));
  });
}
}

/// @nodoc


class _ForgotPass implements AuthEvent {
  const _ForgotPass(this.forgetPasswordRequest);
  

 final  ForgetPasswordRequest forgetPasswordRequest;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPassCopyWith<_ForgotPass> get copyWith => __$ForgotPassCopyWithImpl<_ForgotPass>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPass&&(identical(other.forgetPasswordRequest, forgetPasswordRequest) || other.forgetPasswordRequest == forgetPasswordRequest));
}


@override
int get hashCode => Object.hash(runtimeType,forgetPasswordRequest);

@override
String toString() {
  return 'AuthEvent.forgotPass(forgetPasswordRequest: $forgetPasswordRequest)';
}


}

/// @nodoc
abstract mixin class _$ForgotPassCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$ForgotPassCopyWith(_ForgotPass value, $Res Function(_ForgotPass) _then) = __$ForgotPassCopyWithImpl;
@useResult
$Res call({
 ForgetPasswordRequest forgetPasswordRequest
});


$ForgetPasswordRequestCopyWith<$Res> get forgetPasswordRequest;

}
/// @nodoc
class __$ForgotPassCopyWithImpl<$Res>
    implements _$ForgotPassCopyWith<$Res> {
  __$ForgotPassCopyWithImpl(this._self, this._then);

  final _ForgotPass _self;
  final $Res Function(_ForgotPass) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? forgetPasswordRequest = null,}) {
  return _then(_ForgotPass(
null == forgetPasswordRequest ? _self.forgetPasswordRequest : forgetPasswordRequest // ignore: cast_nullable_to_non_nullable
as ForgetPasswordRequest,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForgetPasswordRequestCopyWith<$Res> get forgetPasswordRequest {
  
  return $ForgetPasswordRequestCopyWith<$Res>(_self.forgetPasswordRequest, (value) {
    return _then(_self.copyWith(forgetPasswordRequest: value));
  });
}
}

/// @nodoc


class _UpdateProfile implements AuthEvent {
  const _UpdateProfile(this.updateProfileRequest);
  

 final  UpdateProfileRequest updateProfileRequest;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileCopyWith<_UpdateProfile> get copyWith => __$UpdateProfileCopyWithImpl<_UpdateProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfile&&(identical(other.updateProfileRequest, updateProfileRequest) || other.updateProfileRequest == updateProfileRequest));
}


@override
int get hashCode => Object.hash(runtimeType,updateProfileRequest);

@override
String toString() {
  return 'AuthEvent.updateProfile(updateProfileRequest: $updateProfileRequest)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$UpdateProfileCopyWith(_UpdateProfile value, $Res Function(_UpdateProfile) _then) = __$UpdateProfileCopyWithImpl;
@useResult
$Res call({
 UpdateProfileRequest updateProfileRequest
});


$UpdateProfileRequestCopyWith<$Res> get updateProfileRequest;

}
/// @nodoc
class __$UpdateProfileCopyWithImpl<$Res>
    implements _$UpdateProfileCopyWith<$Res> {
  __$UpdateProfileCopyWithImpl(this._self, this._then);

  final _UpdateProfile _self;
  final $Res Function(_UpdateProfile) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? updateProfileRequest = null,}) {
  return _then(_UpdateProfile(
null == updateProfileRequest ? _self.updateProfileRequest : updateProfileRequest // ignore: cast_nullable_to_non_nullable
as UpdateProfileRequest,
  ));
}

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateProfileRequestCopyWith<$Res> get updateProfileRequest {
  
  return $UpdateProfileRequestCopyWith<$Res>(_self.updateProfileRequest, (value) {
    return _then(_self.copyWith(updateProfileRequest: value));
  });
}
}

/// @nodoc


class _GetProfile implements AuthEvent {
  const _GetProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.getProfile()';
}


}





/// @nodoc
mixin _$AuthState {

 Auth get auth; bool get isOnline; User? get user; String? get token; bool get isRecentlyLoggedIn; Operation get op; String get statusMessage;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);

  /// Serializes this AuthState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.auth, auth) || other.auth == auth)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.user, user) || other.user == user)&&(identical(other.token, token) || other.token == token)&&(identical(other.isRecentlyLoggedIn, isRecentlyLoggedIn) || other.isRecentlyLoggedIn == isRecentlyLoggedIn)&&(identical(other.op, op) || other.op == op)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,auth,isOnline,user,token,isRecentlyLoggedIn,op,statusMessage);

@override
String toString() {
  return 'AuthState(auth: $auth, isOnline: $isOnline, user: $user, token: $token, isRecentlyLoggedIn: $isRecentlyLoggedIn, op: $op, statusMessage: $statusMessage)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 Auth auth, bool isOnline, User? user, String? token, bool isRecentlyLoggedIn, Operation op, String statusMessage
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? auth = null,Object? isOnline = null,Object? user = freezed,Object? token = freezed,Object? isRecentlyLoggedIn = null,Object? op = null,Object? statusMessage = null,}) {
  return _then(AuthState(
auth: null == auth ? _self.auth : auth // ignore: cast_nullable_to_non_nullable
as Auth,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,isRecentlyLoggedIn: null == isRecentlyLoggedIn ? _self.isRecentlyLoggedIn : isRecentlyLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,op: null == op ? _self.op : op // ignore: cast_nullable_to_non_nullable
as Operation,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Auth auth,  bool isOnline,  User? user,  String? token,  bool isRecentlyLoggedIn,  Operation op,  String statusMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.auth,_that.isOnline,_that.user,_that.token,_that.isRecentlyLoggedIn,_that.op,_that.statusMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Auth auth,  bool isOnline,  User? user,  String? token,  bool isRecentlyLoggedIn,  Operation op,  String statusMessage)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.auth,_that.isOnline,_that.user,_that.token,_that.isRecentlyLoggedIn,_that.op,_that.statusMessage);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Auth auth,  bool isOnline,  User? user,  String? token,  bool isRecentlyLoggedIn,  Operation op,  String statusMessage)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.auth,_that.isOnline,_that.user,_that.token,_that.isRecentlyLoggedIn,_that.op,_that.statusMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthState implements AuthState {
  const _AuthState({required this.auth, required this.isOnline, this.user, this.token, this.isRecentlyLoggedIn = false, required this.op, required this.statusMessage});
  factory _AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);

@override final  Auth auth;
@override final  bool isOnline;
@override final  User? user;
@override final  String? token;
@override@JsonKey() final  bool isRecentlyLoggedIn;
@override final  Operation op;
@override final  String statusMessage;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.auth, auth) || other.auth == auth)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.user, user) || other.user == user)&&(identical(other.token, token) || other.token == token)&&(identical(other.isRecentlyLoggedIn, isRecentlyLoggedIn) || other.isRecentlyLoggedIn == isRecentlyLoggedIn)&&(identical(other.op, op) || other.op == op)&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,auth,isOnline,user,token,isRecentlyLoggedIn,op,statusMessage);

@override
String toString() {
  return 'AuthState(auth: $auth, isOnline: $isOnline, user: $user, token: $token, isRecentlyLoggedIn: $isRecentlyLoggedIn, op: $op, statusMessage: $statusMessage)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 Auth auth, bool isOnline, User? user, String? token, bool isRecentlyLoggedIn, Operation op, String statusMessage
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? auth = null,Object? isOnline = null,Object? user = freezed,Object? token = freezed,Object? isRecentlyLoggedIn = null,Object? op = null,Object? statusMessage = null,}) {
  return _then(_AuthState(
auth: null == auth ? _self.auth : auth // ignore: cast_nullable_to_non_nullable
as Auth,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,isRecentlyLoggedIn: null == isRecentlyLoggedIn ? _self.isRecentlyLoggedIn : isRecentlyLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,op: null == op ? _self.op : op // ignore: cast_nullable_to_non_nullable
as Operation,statusMessage: null == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
