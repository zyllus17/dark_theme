import 'dart:developer';

import 'package:dark_theme/state/theme_mode.notifier.dart';
import 'package:dark_theme/state/theme_mode.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeCard extends ConsumerWidget {
  const ThemeCard({
    super.key,
    required this.onTap,
    required this.icon,
    required this.mode,
  });

  final IconData icon;
  final void Function()? onTap;
  final ThemeMode mode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeModeState state = ref.watch(themeProvider);
    return Card(
      elevation: 2,
      shadowColor: Theme.of(context).colorScheme.shadow,
      color: state == mode
          ? Theme.of(context).colorScheme.primary
          : Theme.of(context).colorScheme.surface,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: Icon(
          icon,
          size: 32,
          color: state != mode
              ? Theme.of(context).colorScheme.primary
              : Colors.white,
        ),
      ),
    );
  }
}
