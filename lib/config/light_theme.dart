import 'package:dark_theme/config/colors.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final lightThemeProvider = Provider((ref) {
  var _theme = FlexThemeData.light(
    appBarBackground: Colors.white,
    colors: FlexSchemeColor.from(
      brightness: Brightness.light,
      primary: AppColors.blue,
    ),
    subThemesData: const FlexSubThemesData(),
    useMaterial3: true,
    useMaterial3ErrorColors: true,
  );

  final _fontFamily = _theme.textTheme.apply(
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

  _theme = _theme.copyWith(
    textTheme: _textTheme,
    primaryTextTheme: _textTheme,
  );

  // return _theme.copyWith(
  //   elevatedButtonTheme: CustomElevatedButtonThemeData(_theme),
  //   outlinedButtonTheme: CustomOutlinedButtonThemeData(_theme),
  //   checkboxTheme: CustomCheckBoxThemeData(_theme),
  // );
});
