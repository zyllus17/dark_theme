import 'package:dark_theme/constants/colors.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dark_theme/themes/check_box.style.dart';
import 'package:dark_theme/themes/elevated_button.style.dart';
import 'package:dark_theme/themes/outline_button.style.dart';

final darkThemeProvider = Provider((ref) {
  var darkTheme = FlexThemeData.dark(
    primary: AppColors.blue,

    ///Color visible on Primary
    onPrimary: AppColors.black,

    ///Secondary color
    secondary: AppColors.green,

    ///Color on secondary
    onSecondary: AppColors.white,

    ///Color on error
    error: AppColors.red,

    /// A color that is clearly legible when drawn on [error] color.
    onError: AppColors.onyx,

    ///Background color for widgets
    surface: AppColors.onyx,

    /// A color that is clearly legible when written/drawn on [surface] color.
    onSurface: AppColors.white,

    /// A color that typically appears behind scrollable content.
    background: AppColors.onyx,

    /// A color that is clearly legible when drawn on [background] color.
    onBackground: AppColors.white,

    /// The color of the [Scaffold] background.
    scaffoldBackground: AppColors.black,

    /// The background color of Dialog elements.
    dialogBackground: AppColors.onyx,

    /// Background theme color for the [AppBar]
    appBarBackground: AppColors.onyx,

    /// A color that's clearly legible when drawn on [primaryContainer].
    onPrimaryContainer: AppColors.white,

    /// Themeing of widgets
    subThemesData: const FlexSubThemesData(
      
    ),

    useMaterial3: true,
    useMaterial3ErrorColors: true,
    //TODO:(Maruf)Change it to FontFamily.circularStd in HLP
    fontFamily: 'Roboto',
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
    shadowColor: AppColors.black,
  );

  return darkTheme.copyWith(
    elevatedButtonTheme: CustomElevatedButtonThemeData(
      darkTheme,
    ),
    outlinedButtonTheme: CustomOutlinedButtonThemeData(darkTheme),
    checkboxTheme: CustomCheckBoxThemeData(darkTheme),
  );
});
