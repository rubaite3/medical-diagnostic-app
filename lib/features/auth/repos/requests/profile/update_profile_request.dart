import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_request.freezed.dart';
part 'update_profile_request.g.dart';

@freezed
sealed class UpdateProfileRequest with _$UpdateProfileRequest {
  factory UpdateProfileRequest({
    @JsonKey(name: "full_name") String? fullName,
    String? avatar,
    @JsonKey(name: "birth_date") String? birthDate,
    String? gender,
    @JsonKey(name: "is_smoker") bool? isSmoker,
    @JsonKey(name: "has_diabetes") bool? hasDiabetes,
    @JsonKey(name: "has_hypertension") bool? hasHypertension,
    @JsonKey(name: "is_pregnant") bool? isPregnant,
    @JsonKey(name: "activity_level") String? activityLevel,
    @JsonKey(name: "last_checkup_date") String? lastCheckupDate,
  }) = _UpdateProfileRequest;

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileRequestFromJson(json);
}

extension UpdateProfileRequestX on UpdateProfileRequest {
  Future<FormData> toFormData() async {
    final map = toJson();
    if (avatar != null) {
      map['avatar'] = await MultipartFile.fromFile(avatar!);
    }
    return FormData.fromMap(map);
  }
}
