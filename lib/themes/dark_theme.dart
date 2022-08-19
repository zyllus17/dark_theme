import 'package:dark_theme/constants/colors.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dark_theme/themes/check_box.style.dart';
import 'package:dark_theme/themes/elevated_button.style.dart';
import 'package:dark_theme/themes/outline_button.style.dart';

final darkThemeProvider = Provider((ref) {
  var darkTheme = FlexThemeData.dark(
    scaffoldBackground: AppColors.black,
    appBarBackground: AppColors.black,
    primary: AppColors.blue,
    // dialogBackground: AppColors.yellow,
    // onSecondary: AppColors.yellow,
    // primaryContainer: AppColors.gold,
    // surface: AppColors.onyx,
    background: Colors.transparent,

    colors: FlexSchemeColor.from(
      brightness: Brightness.dark,
      primary: AppColors.blue,

      // secondary: AppColors.onyx,
      // primaryContainer: AppColors.onyx,
      // tertiary: AppColors.onyx,
    ),
    subThemesData: const FlexSubThemesData(),
    useMaterial3: true,
    useMaterial3ErrorColors: true,
  );

  final fontFamily = darkTheme.textTheme.apply(
    // fontFamily: FontFamily.circularStd,
    fontFamily: 'Roboto',
    displayColor: AppColors.white,
    bodyColor: AppColors.white,
  );

  final textTheme = fontFamily.copyWith(
    displaySmall: fontFamily.displaySmall?.copyWith(
      fontWeight: FontWeight.bold,
    ),
    titleMedium: fontFamily.titleMedium?.copyWith(fontSize: 18),
  );

  darkTheme = darkTheme.copyWith(
    textTheme: textTheme,
    primaryTextTheme: textTheme,
  );

  return darkTheme.copyWith(
    elevatedButtonTheme: CustomElevatedButtonThemeData(
      darkTheme,
    ),
    outlinedButtonTheme: CustomOutlinedButtonThemeData(darkTheme),
    checkboxTheme: CustomCheckBoxThemeData(darkTheme),
  );
});
