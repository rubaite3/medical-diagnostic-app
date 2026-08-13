import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class User with _$User {
  factory User({
    String? email,
    @JsonKey(name: "full_name") String? fullName,
    String? avatar,
    @JsonKey(name: "birth_date") DateTime? birthDate,
    String? gender,
    @JsonKey(name: "is_smoker") bool? isSmoker,
    String? occupation,
    @JsonKey(name: "drinks_alcohol") bool? drinksAlcohol,
    @JsonKey(name: "has_diabetes") bool? hasDiabetes,
    @JsonKey(name: "has_hypertension") bool? hasHypertension,
    @JsonKey(name: "is_pregnant") bool? isPregnant,
    @JsonKey(name: "activity_level") String? activityLevel,
    @JsonKey(name: "blood_type") String? bloodType,
    @JsonKey(name: "last_checkup_date") String? lastCheckupDate,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
