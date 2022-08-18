import 'package:flutter/material.dart';

class CustomCheckBoxThemeData extends CheckboxThemeData {
  final ThemeData theme;

  const CustomCheckBoxThemeData(this.theme);

  @override
  OutlinedBorder? get shape => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      );

  @override
  BorderSide? get side => BorderSide(color: theme.primaryColor);
}
