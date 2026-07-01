import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'update_profile_request.freezed.dart';
part 'update_profile_request.g.dart';

@freezed
sealed class UpdateProfileRequest with _$UpdateProfileRequest {
  factory UpdateProfileRequest({
    @JsonKey(includeIfNull: false, name: "full_name") String? fullName,
    @JsonKey(includeIfNull: false) String? avatar,
    @JsonKey(includeIfNull: false, name: "birth_date") String? birthDate,
    @JsonKey(includeIfNull: false) String? gender,
    @JsonKey(includeIfNull: false, name: "is_smoker") int? isSmoker,
    @JsonKey(includeIfNull: false, name: "has_diabetes") int? hasDiabetes,
    @JsonKey(includeIfNull: false, name: "has_hypertension")
    @JsonKey(includeIfNull: false)
    int? hasHypertension,
    @JsonKey(includeIfNull: false, name: "is_pregnant") int? isPregnant,
    @JsonKey(includeIfNull: false, name: "activity_level")
    @JsonKey(includeIfNull: false)
    String? activityLevel,
    @JsonKey(includeIfNull: false, name: "last_checkup_date")
    @JsonKey(includeIfNull: false)
    String? lastCheckupDate,
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
    if (birthDate != null) {
      map['birth_date'] = DateFormat(
        'MM/dd/yyyy',
      ).format(map['birth_date']).toString();
    }
    print(map['birth_date']);
    return FormData.fromMap(map);
  }
}
