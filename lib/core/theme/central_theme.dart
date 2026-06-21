import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:medical_diagnostic_app1/core/theme/central_color_scheme.dart';

class CentralTheme {
  static final lightTheme = FlexThemeData.light(
    colorScheme: CentralColorScheme.flexSchemeLight,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 0, 
    subThemesData: const FlexSubThemesData(
      elevatedButtonRadius: 16.0,
      elevatedButtonSchemeColor: SchemeColor.onPrimary,
      elevatedButtonSecondarySchemeColor: SchemeColor.primary,
      inputDecoratorRadius: 16.0,
      inputDecoratorIsFilled: true,
      inputDecoratorFillColor: null,
      inputDecoratorUnfocusedBorderIsColored: false,
    ),
    useMaterial3: true,
    fontFamily: 'Tajwal',
  );
  static final darkTheme = FlexThemeData.dark(
    colorScheme: CentralColorScheme.flexSchemeDark,
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 0, 
    subThemesData: const FlexSubThemesData(
      elevatedButtonRadius: 16.0,
      elevatedButtonSchemeColor: SchemeColor.onPrimary,
      elevatedButtonSecondarySchemeColor: SchemeColor.primary,
      inputDecoratorRadius: 16.0,
      inputDecoratorIsFilled: true,
      inputDecoratorFillColor: null,
      inputDecoratorUnfocusedBorderIsColored: false,
    ),
    useMaterial3: true,
    fontFamily: 'Tajwal',
  );
}