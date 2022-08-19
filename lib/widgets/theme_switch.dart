import 'package:dark_theme/screens/home_screen.dart';
import 'package:dark_theme/theme_state/theme_mode.notifier.dart';
import 'package:dark_theme/theme_state/theme_mode.state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemeSwitch extends ConsumerWidget {
  const ThemeSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(themeProvider.notifier);

    return Column(
      children: [
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1.75,
          padding: EdgeInsets.zero,
          children: <ThemeCard>[
            ThemeCard(
              onTap: () => notifier.setThemeMode(ThemeMode.system),
              icon: Icons.settings_system_daydream,
              mode: ThemeMode.system,
            ),
            ThemeCard(
              onTap: () => notifier.setThemeMode(ThemeMode.light),
              icon: Icons.light,
              mode: ThemeMode.light,
            ),
            ThemeCard(
              onTap: () => notifier.setThemeMode(ThemeMode.dark),
              icon: Icons.dark_mode,
              mode: ThemeMode.dark,
            ),
          ],
        ),
        const CustomDivider(),
      ],
    );
  }
}

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

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Divider(
            color: Theme.of(context).colorScheme.onBackground.withOpacity(.4),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
