import 'package:flutter/material.dart';

class Utils {
  static bool isLight(BuildContext ctx) {
    return MediaQuery.of(ctx).platformBrightness == Brightness.light;
  }
}
