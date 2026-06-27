import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_email_verification_request.freezed.dart';
part 'resend_email_verification_request.g.dart';

@freezed
sealed class ResendEmailVerificationRequest
    with _$ResendEmailVerificationRequest {
  factory ResendEmailVerificationRequest({required String email}) =
      _ResendEmailVerificationRequest;

  factory ResendEmailVerificationRequest.fromJson(Map<String, dynamic> json) =>
      _$ResendEmailVerificationRequestFromJson(json);
}
