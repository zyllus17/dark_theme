import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

extension ThemeExtensions on ThemeData {
  TextStyle? get displayLarge => textTheme.displayLarge;
  TextStyle? get displayMedium => textTheme.displayMedium;
  TextStyle? get displaySmall => textTheme.displaySmall;
  TextStyle? get headlineLarge => textTheme.headlineLarge;
  TextStyle? get headlineMedium => textTheme.headlineMedium;
  TextStyle? get headlineSmall => textTheme.headlineSmall;
  TextStyle? get titleLarge => textTheme.titleLarge;
  TextStyle? get titleMedium => textTheme.titleMedium;
  TextStyle? get titleSmall => textTheme.titleSmall;
  TextStyle? get labelLarge => textTheme.labelLarge;
  TextStyle? get labelMedium => textTheme.labelMedium;
  TextStyle? get labelSmall => textTheme.labelSmall;
  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get bodySmall => textTheme.bodySmall;
  TextStyle? get note => textTheme.bodyLarge?.copyWith(
        color: primaryColor,
        fontWeight: FontWeight.w500,
      );
  TextStyle? get appBarLarge => textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 29,
      );
  TextStyle? get listHeadingMedium => textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 22,
      );
  TextStyle? get toolTextStyle => textTheme.titleLarge?.copyWith(
        color: Colors.black54,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );
  ButtonStyle? get smallOutlineButton => OutlinedButton.styleFrom(
        textStyle: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
        padding: const Pad(
          vertical: 10,
          horizontal: 20,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      );

  ButtonStyle? get bottomSheetElevatedButton => ElevatedButton.styleFrom(
        primary: colorScheme.onPrimary,
        onPrimary: primaryColor,
      ).copyWith();
}

extension TextStyleExtensions on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle size(double value) => copyWith(fontSize: value);
  TextStyle weight(FontWeight weight) => copyWith(fontWeight: weight);
}