import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'update_profile_request.freezed.dart';
part 'update_profile_request.g.dart';

@freezed
sealed class UpdateProfileRequest with _$UpdateProfileRequest {
  factory UpdateProfileRequest({
    @JsonKey(includeIfNull: false, name: "full_name") String? fullName,
    @JsonKey(includeIfNull: false) String? avatar,
    @JsonKey(includeIfNull: false, name: "birth_date") DateTime? birthDate,
    @JsonKey(includeIfNull: false) String? gender,
    @JsonKey(includeIfNull: false, name: "is_smoker") bool? isSmoker,
    String? occupation,
    @JsonKey(name: "drinks_alcohol") bool? drinksAlcohol,

    @JsonKey(includeIfNull: false, name: "has_diabetes") bool? hasDiabetes,
    @JsonKey(includeIfNull: false, name: "has_hypertension")
    @JsonKey(includeIfNull: false)
    bool? hasHypertension,
    @JsonKey(includeIfNull: false, name: "is_pregnant") bool? isPregnant,
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
      ).format(birthDate!).toString();
    }
    if (isSmoker != null) {
      map['is_smoker'] = isSmoker! ? 1 : 0;
    }
    if (hasDiabetes != null) {
      map['has_diabetes'] = hasDiabetes! ? 1 : 0;
    }
    if (hasHypertension != null) {
      map['has_hypertension'] = hasHypertension! ? 1 : 0;
    }
    if (isPregnant != null) {
      map['is_pregnant'] = isPregnant! ? 1 : 0;
    }
    debugPrint(map.toString());
    return FormData.fromMap(map);
  }
}
