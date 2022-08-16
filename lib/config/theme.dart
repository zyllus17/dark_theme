import 'package:flutter/material.dart';

const int _primaryColor = 0xFF6366F1;
const MaterialColor primarySwatch = MaterialColor(_primaryColor, <int, Color>{
  50: Color(0xFFEEF2FF),
  100: Color(0xFFE0E7FF),
  200: Color(0xFFC7D2FE),
  300: Color(0xFFA5B4FC),
  400: Color(0xFF818CF8),
  500: Color(_primaryColor),
  600: Color(0xFF4F46E5),
  700: Color(0xFF4338CA),
  800: Color(0xFF3730A3),
  900: Color(0xFF312E81),
});

const int _textColor = 0xFF64748B;
const MaterialColor textSwatch = MaterialColor(_textColor, <int, Color>{
  50: Color(0xFFF8FAFC),
  100: Color(0xFFF1F5F9),
  200: Color(0xFFE2E8F0),
  300: Color(0xFFCBD5E1),
  400: Color(0xFF94A3B8),
  500: Color(_textColor),
  600: Color(0xFF475569),
  700: Color(0xFF334155),
  800: Color(0xFF1E293B),
  900: Color(0xFF0F172A),
});

const Color errorColor = Color(0xFFDC2626);

final ColorScheme lightColorScheme = ColorScheme.light(
  primary: primarySwatch.shade500,
  secondary: primarySwatch.shade500,
  onSecondary: Colors.white,
  error: errorColor,
  background: textSwatch.shade200,
  onBackground: textSwatch.shade500,
  onSurface: textSwatch.shade500,
  surface: textSwatch.shade50,
  surfaceVariant: Colors.white,
  shadow: textSwatch.shade900.withOpacity(.1),
);

final ColorScheme darkColorScheme = ColorScheme.dark(
  primary: primarySwatch.shade500,
  secondary: primarySwatch.shade500,
  onSecondary: Colors.white,
  error: errorColor,
  background: const Color(0xFF171724),
  onBackground: textSwatch.shade400,
  onSurface: textSwatch.shade300,
  surface: const Color(0xFF262630),
  surfaceVariant: const Color(0xFF282832),
  shadow: textSwatch.shade900.withOpacity(.2),
);

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  fontFamily: 'Nunito',
  toggleableActiveColor: primarySwatch.shade500,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: textSwatch.shade700,
      fontFamily: 'Nunito',
    ),
    displayMedium: TextStyle(
      color: textSwatch.shade600,
      fontFamily: 'Nunito',
    ),
    displaySmall: TextStyle(
      color: textSwatch.shade500,
      fontFamily: 'Nunito',
    ),
    headlineLarge: TextStyle(
      color: textSwatch.shade700,
      fontFamily: 'Nunito',
    ),
    headlineMedium: TextStyle(
      color: textSwatch.shade600,
      fontFamily: 'Nunito',
    ),
    headlineSmall: TextStyle(
      color: textSwatch.shade500,
      fontFamily: 'Nunito',
    ),
    titleLarge: TextStyle(
      color: textSwatch.shade700,
      fontFamily: 'Nunito',
    ),
    titleMedium: TextStyle(
      color: textSwatch.shade600,
      fontFamily: 'Nunito',
    ),
    titleSmall: TextStyle(
      color: textSwatch.shade500,
      fontFamily: 'Nunito',
    ),
    bodyLarge: TextStyle(
      color: textSwatch.shade700,
      fontFamily: 'Nunito',
    ),
    bodyMedium: TextStyle(
      color: textSwatch.shade600,
      fontFamily: 'Nunito',
    ),
    bodySmall: TextStyle(
      color: textSwatch.shade500,
      fontFamily: 'Nunito',
    ),
    labelLarge: TextStyle(
      color: textSwatch.shade700,
      fontFamily: 'Nunito',
    ),
    labelMedium: TextStyle(
      color: textSwatch.shade600,
      fontFamily: 'Nunito',
    ),
    labelSmall: TextStyle(
      color: textSwatch.shade500,
      fontFamily: 'Nunito',
    ),
  ),
);

final ThemeData darkTheme = lightTheme.copyWith(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  toggleableActiveColor: primarySwatch.shade500,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: textSwatch.shade200,
      fontFamily: 'Nunito',
    ),
    displayMedium: TextStyle(
      color: textSwatch.shade300,
      fontFamily: 'Nunito',
    ),
    displaySmall: TextStyle(
      color: textSwatch.shade400,
      fontFamily: 'Nunito',
    ),
    headlineLarge: TextStyle(
      color: textSwatch.shade200,
      fontFamily: 'Nunito',
    ),
    headlineMedium: TextStyle(
      color: textSwatch.shade300,
      fontFamily: 'Nunito',
    ),
    headlineSmall: TextStyle(
      color: textSwatch.shade400,
      fontFamily: 'Nunito',
    ),
    titleLarge: TextStyle(
      color: textSwatch.shade200,
      fontFamily: 'Nunito',
    ),
    titleMedium: TextStyle(
      color: textSwatch.shade300,
      fontFamily: 'Nunito',
    ),
    titleSmall: TextStyle(
      color: textSwatch.shade400,
      fontFamily: 'Nunito',
    ),
    bodyLarge: TextStyle(
      color: textSwatch.shade200,
      fontFamily: 'Nunito',
    ),
    bodyMedium: TextStyle(
      color: textSwatch.shade300,
      fontFamily: 'Nunito',
    ),
    bodySmall: TextStyle(
      color: textSwatch.shade400,
      fontFamily: 'Nunito',
    ),
    labelLarge: TextStyle(
      color: textSwatch.shade200,
      fontFamily: 'Nunito',
    ),
    labelMedium: TextStyle(
      color: textSwatch.shade300,
      fontFamily: 'Nunito',
    ),
    labelSmall: TextStyle(
      color: textSwatch.shade400,
      fontFamily: 'Nunito',
    ),
  ),
);
