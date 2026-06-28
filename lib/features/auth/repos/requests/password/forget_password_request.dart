import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_request.freezed.dart';
part 'forget_password_request.g.dart';

@freezed
sealed class ForgetPasswordRequest with _$ForgetPasswordRequest {
  factory ForgetPasswordRequest({required String email}) =
      _ForgetPasswordRequest;

  factory ForgetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordRequestFromJson(json);
}
