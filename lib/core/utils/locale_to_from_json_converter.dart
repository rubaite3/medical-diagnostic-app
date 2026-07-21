import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

class LocaleToFromJsonConverter
    extends JsonConverter<Locale, Map<String, dynamic>> {
  const LocaleToFromJsonConverter();
  @override
  Locale fromJson(Map<String, dynamic> json) {
    return Locale(json["languageCode"]);
  }

  @override
  Map<String, dynamic> toJson(Locale object) {
    return {"languageCode": object.languageCode};
  }
}
