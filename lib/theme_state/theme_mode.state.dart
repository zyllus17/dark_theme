import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_mode.state.freezed.dart';

@freezed
class ThemeModeState with _$ThemeModeState {
  const factory ThemeModeState({ThemeMode? themeMode}) = _ThemeModeState;
}
