import 'package:dark_theme/config/colors.dart';
import 'package:dark_theme/themes/check_box.style.dart';
import 'package:dark_theme/themes/elevated_button.style.dart';
import 'package:dark_theme/themes/outline_button.style.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final lightThemeProvider = Provider((ref) {
  var _lightTheme = FlexThemeData.light(
    
    appBarBackground: Colors.white,
    colors: FlexSchemeColor.from(
      brightness: Brightness.light,
      primary: AppColors.blue,
    ),
    subThemesData: const FlexSubThemesData(),
    useMaterial3: true,
    useMaterial3ErrorColors: true,
  );

  final _fontFamily = _lightTheme.textTheme.apply(
    // fontFamily: FontFamily.circularStd,
    fontFamily: 'Roboto',
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
