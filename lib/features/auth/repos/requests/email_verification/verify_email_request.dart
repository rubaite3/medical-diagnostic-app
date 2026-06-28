import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_email_request.freezed.dart';
part 'verify_email_request.g.dart';

@freezed
sealed class VerifyEmailRequest with _$VerifyEmailRequest {
  factory VerifyEmailRequest({required String otp, required String email}) =
      _VerifyEmailRequest;

  factory VerifyEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyEmailRequestFromJson(json);
}
