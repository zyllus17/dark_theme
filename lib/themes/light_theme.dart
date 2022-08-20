import 'package:dark_theme/constants/colors.dart';
import 'package:dark_theme/themes/check_box.style.dart';
import 'package:dark_theme/themes/elevated_button.style.dart';
import 'package:dark_theme/themes/outline_button.style.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final lightThemeProvider = Provider((ref) {
  var _lightTheme = FlexThemeData.light(
    ///Main theme of the app
    primary: AppColors.blue,

    ///Color visible on Primary
    onPrimary: AppColors.white,

    ///Secondary color
    secondary: AppColors.green,

    ///Color on secondary
    onSecondary: AppColors.white,

    ///Color on error
    error: AppColors.red,

    /// A color that is clearly legible when drawn on [error] color.
    onError: AppColors.white,

    ///Background color for widgets
    surface: AppColors.white,

    /// A color that is clearly legible when written/drawn on [surface] color.
    onSurface: AppColors.black,

    /// A color that typically appears behind scrollable content.
    background: AppColors.white,

    /// A color that is clearly legible when drawn on [background] color.
    onBackground: AppColors.black,

    /// The color of the [Scaffold] background.
    scaffoldBackground: AppColors.white,

    /// The background color of Dialog elements.
    dialogBackground: AppColors.white,

    /// Background theme color for the [AppBar]
    appBarBackground: Colors.white,

    /// A color that's clearly legible when drawn on [primaryContainer].
    onPrimaryContainer: AppColors.black,

    /// Themeing of widgets
    subThemesData: const FlexSubThemesData(),

    useMaterial3: true,
    useMaterial3ErrorColors: true,
    //TODO:(Maruf)Change it to FontFamily.circularStd in HLP
    fontFamily: 'Roboto',
    // extensions: ,
    // keyColors: FlexKeyColors(),

    // colors: FlexSchemeColor.from(
    //   brightness: Brightness.light,
    //   primary: AppColors.blue,
    //   // primaryContainer: AppColors.black,
    // ),
  );

  final _fontFamily = _lightTheme.textTheme.apply(
    // fontFamily: FontFamily.circularStd,
    // fontFamily: 'Roboto',
    displayColor: AppColors.onyx,
    bodyColor: AppColors.onyx,
  );

  final _textTheme = _fontFamily.copyWith(
    displaySmall: _fontFamily.displaySmall?.copyWith(
      fontWeight: FontWeight.bold,
    ),
    titleMedium: _fontFamily.titleMedium?.copyWith(fontSize: 18),
  );

  _lightTheme = _lightTheme.copyWith(
    textTheme: _textTheme,
    primaryTextTheme: _textTheme,
  );

  return _lightTheme.copyWith(
    elevatedButtonTheme: CustomElevatedButtonThemeData(_lightTheme),
    outlinedButtonTheme: CustomOutlinedButtonThemeData(_lightTheme),
    checkboxTheme: CustomCheckBoxThemeData(_lightTheme),
  );
});
