import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

class CustomElevatedButtonThemeData extends ElevatedButtonThemeData {
  final ThemeData theme;

  const CustomElevatedButtonThemeData(this.theme);

  @override
  // TODO: implement style
  ButtonStyle? get style => theme.elevatedButtonTheme.style?.copyWith(
        padding: MaterialStateProperty.all(
          const Pad(vertical: 20, horizontal: 40),
        ),
        textStyle: MaterialStateProperty.all(
          theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            fontFamily: 'CircularStd',
            letterSpacing: .8,
            height: 1.3,
          ),
        ),
      );
}
