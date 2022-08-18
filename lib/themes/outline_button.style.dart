import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButtonThemeData extends OutlinedButtonThemeData {
  final ThemeData theme;

  const CustomOutlinedButtonThemeData(this.theme);

  @override
  // TODO: implement style
  ButtonStyle? get style => theme.outlinedButtonTheme.style?.copyWith(
        padding: MaterialStateProperty.all(
          const Pad(vertical: 20, horizontal: 40),
        ),
        textStyle: MaterialStateProperty.all(
          theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
