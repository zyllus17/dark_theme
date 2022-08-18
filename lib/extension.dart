import 'package:flutter/material.dart';

@immutable
class ChangeColor extends ThemeExtension<ChangeColor> {
  const ChangeColor({
    required this.changeColor,
  });

  final Color? changeColor;

  @override
  ChangeColor copyWith({Color? changeColor}) {
    return ChangeColor(
      changeColor: changeColor ?? this.changeColor,
    );
  }

  @override
  ChangeColor lerp(ThemeExtension<ChangeColor>? other, double t) {
    if (other is! ChangeColor) {
      return this;
    }
    return ChangeColor(
      changeColor: Color.lerp(changeColor, other.changeColor, t),
    );
  }
}
