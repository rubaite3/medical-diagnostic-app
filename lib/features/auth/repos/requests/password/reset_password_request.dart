import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_request.freezed.dart';
part 'reset_password_request.g.dart';

@freezed
sealed class ResetPasswordRequest with _$ResetPasswordRequest {
  factory ResetPasswordRequest({
    required String email,
    required String password,
    @JsonKey(name: "password_confirmation")
    required String passwordConfirmation,
  }) = _ResetPasswordRequest;

  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestFromJson(json);
}
