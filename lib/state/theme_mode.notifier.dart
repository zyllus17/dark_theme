import 'dart:developer';

import 'package:dark_theme/state/theme_mode.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

import 'package:flutter/material.dart';

class CustomStateNotifier<T> extends StateNotifier<T> {
  final Ref ref;

  CustomStateNotifier(this.ref, T state) : super(state);
}

final themeProvider =
    StateNotifierProvider.autoDispose<ThemeModeNotifier, ThemeModeState>(
  (ref) => ThemeModeNotifier(ref, ThemeModeState()),
);

class ThemeModeNotifier extends CustomStateNotifier<ThemeModeState> {
  ThemeModeNotifier(super.ref, super.state);

  // Future<void> getUserNotificationSettings() async {
  //   state = state.copyWith(isLoading: true);
  //   final db = ref.watch(dbProvider);
  //   final String? userId = db.getUserId();
  //   final response = await gqlClient.query_GetUserNotificationSettings(
  //     Options$Query_GetUserNotificationSettings(
  //       variables:
  //           Variables$Query_GetUserNotificationSettings(user_id: userId ?? ""),
  //     ),
  //   );
  //   state = state.copyWith(
  //     isLoading: false,
  //     reminderSound: response
  //             .parsedData?.user_notification_settings[0].play_reminder_sound ??
  //         false,

  setThemeMode(ThemeMode mode) {
    state = state.copyWith(themeMode: mode);
    Hive.box('prefs').put('themeMode', mode.toString());
  }
}
