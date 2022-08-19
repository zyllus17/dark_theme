import 'package:dark_theme/theme_state/theme_mode.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

class CustomStateNotifier<T> extends StateNotifier<T> {
  final Ref ref;

  CustomStateNotifier(this.ref, T state) : super(state);
}

final themeProvider =
    StateNotifierProvider.autoDispose<ThemeModeNotifier, ThemeModeState>(
  (ref) => ThemeModeNotifier(ref, const ThemeModeState()),
);

class ThemeModeNotifier extends CustomStateNotifier<ThemeModeState> {
  ThemeModeNotifier(super.ref, super.state);

  setThemeMode(ThemeMode mode) {
    state = state.copyWith(themeMode: mode);
    Hive.box('prefs').put('themeMode', mode.toString());
  }
}
