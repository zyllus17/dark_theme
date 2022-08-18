import 'package:dark_theme/state/theme_mode.notifier.dart';
import 'package:dark_theme/widgets/info_card.dart';
import 'package:dark_theme/widgets/theme_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(themeProvider);
    final notifier = ref.watch(themeProvider.notifier);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text('Flutter Theme'),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            const SizedBox(
              height: 16,
            ),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1.75 / 1,
              padding: EdgeInsets.zero,
              children: <ThemeCard>[
                ThemeCard(
                  onTap: () => notifier.setThemeMode(ThemeMode.system),
                  icon: Icons.settings_system_daydream,
                ),
                ThemeCard(
                  onTap: () => notifier.setThemeMode(ThemeMode.light),
                  icon: Icons.light,
                ),
                ThemeCard(
                  onTap: () => notifier.setThemeMode(ThemeMode.dark),
                  icon: Icons.dark_mode,
                ),
              ],
            ),

            /// Example: Good way to add space between items without using Paddings
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Divider(
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(.4),
              ),
            ),
            const SizedBox(height: 8),

            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 4 / 5.5,
              padding: EdgeInsets.zero,
              children: const <InfoCard>[
                /// Example: it is good practice to put widgets in separate files.
                /// This way the screen files won't become too large and
                /// the code becomes more clear.
                InfoCard(
                    title: 'Time',
                    content: 'Time is running out',
                    icon: Icons.timer_rounded,
                    isPrimaryColor: true),
                InfoCard(
                    title: 'Food',
                    content: 'Food is getting cold',
                    icon: Icons.food_bank,
                    isPrimaryColor: false),
              ],
            ),
            const SizedBox(height: 36),
          ]),
    );
  }
}
