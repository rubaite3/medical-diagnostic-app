import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class User with _$User {
  factory User({
    String? email,
    @JsonKey(name: "full_name") String? fullName,
    String? avatar,
    @JsonKey(name: "birth_date") String? birthDate,
    String? gender,
    @JsonKey(name: "is_smoker") int? isSmoker,
    @JsonKey(name: "has_diabetes") int? hasDiabetes,
    @JsonKey(name: "has_hypertension") int? hasHypertension,
    @JsonKey(name: "is_pregnant") int? isPregnant,
    @JsonKey(name: "activity_level") String? activityLevel,
    @JsonKey(name: "last_checkup_date") String? lastCheckupDate,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
