import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:google_fonts/google_fonts.dart';
@immutable

class AppTheme {
  const AppTheme._();

  static final light = FlexThemeData.light(
    colors: const FlexSchemeColor(
      primary: Color(0xFFE8A0BF),
      primaryContainer: Color(0xFFFCE4EC),

      secondary: Color(0xFFD8A7B1),
      secondaryContainer: Color(0xFFF8E8EC),

      tertiary: Color(0xFFC98FA3),
      tertiaryContainer: Color(0xFFF5DDE5),

      appBarColor: Color(0xFFE8A0BF),
    ),

    surfaceMode: FlexSurfaceMode.highScaffoldLowSurfacesVariantDialog,
    blendLevel: 0,

    appBarStyle: FlexAppBarStyle.primary,
    appBarOpacity: 0.95,
    appBarElevation: 0,
    transparentStatusBar: true,

    tabBarStyle: FlexTabBarStyle.forBackground,
    tooltipsMatchBackground: true,

    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    fontFamily: GoogleFonts.dekko().fontFamily,

    subThemesData: const FlexSubThemesData(
      elevatedButtonSchemeColor: SchemeColor.primary,

      useTextTheme: true,
      fabUseShape: true,
      interactionEffects: true,

      bottomNavigationBarElevation: 0,
      bottomNavigationBarOpacity: 1,
      navigationBarOpacity: 1,
      navigationBarMutedUnselectedIcon: true,

      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      inputDecoratorUnfocusedHasBorder: true,
      inputDecoratorRadius: 16,

      blendOnColors: true,
      blendTextTheme: true,
      popupMenuOpacity: 0.95,
    ),
  );
}