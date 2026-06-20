import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:medical_diagnostic_app1/core/theme/central_color_scheme.dart';

class CentralTheme {
  static final lightTheme = FlexThemeData.light(
    colors: const FlexSchemeColor(
      primary: Color(0xff395886),
      primaryContainer: Color(0xff638ecb),
      secondary: Color(0xff08aaee),
      secondaryContainer: Color(0xffb1c9ef),
      tertiary: Color(0xffd5deef),
      tertiaryContainer: Color(0xfff0f3fa),
      appBarColor: Color(0xffb1c9ef),
      error: Color(0xffb00020),
    ),
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 9,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 10,
      blendOnColors: false,
      elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
      elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
    ),
    useMaterial3ErrorColors: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    fontFamily: 'Tajwal',

    // To use the playground font, add GoogleFonts package and uncomment
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  );
  static final darkTheme = FlexThemeData.dark(
    colors: const FlexSchemeColor(
      primary: Color(0xff9fc9ff),
      primaryContainer: Color(0xff00325b),
      secondary: Color(0xffffb59d),
      secondaryContainer: Color(0xff872100),
      tertiary: Color(0xff86d2e1),
      tertiaryContainer: Color(0xff004e59),
      appBarColor: Color(0xff872100),
      error: Color(0xffcf6679),
    ),
    surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
    blendLevel: 15,
    subThemesData: const FlexSubThemesData(
      blendOnLevel: 20,
      elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
      elevatedButtonSecondarySchemeColor: SchemeColor.primaryContainer,
    ),
    useMaterial3ErrorColors: true,
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    useMaterial3: true,
    swapLegacyOnMaterial3: true,
    fontFamily: 'Tajwal',

    // To use the Playground font, add GoogleFonts package and uncomment
    // fontFamily: GoogleFonts.notoSans().fontFamily,
  );
  // If you do not have a themeMode switch, uncomment this line
  // to let the device system mode control the theme mode:
  // themeMode: ThemeMode.system,
}
