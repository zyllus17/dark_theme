import 'package:dark_theme/extensions/theme_extensions.dart';
import 'package:dark_theme/state/theme_mode.notifier.dart';
import 'package:dark_theme/themes/dark_theme.dart';
import 'package:dark_theme/themes/light_theme.dart';
import 'package:dark_theme/widgets/info_card.dart';
import 'package:dark_theme/widgets/theme_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final state = ref.watch(themeProvider);
    final notifier = ref.watch(themeProvider.notifier);
    final lightThemeData = ref.watch(lightThemeProvider);
    final darkThemeData = ref.watch(darkThemeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Theme'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                // padding: const EdgeInsets.symmetric(horizontal: 16),
                // physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  const SizedBox(
                    height: 16,
                  ),
                  // SizedBox(
                  //   child: Container(
                  //     padding:
                  //         EdgeInsets.symmetric(horizontal: 35, vertical: 24),
                  //     margin: EdgeInsets.only(
                  //         top: 30, bottom: 80, left: 5, right: 5),
                  //     decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(26),
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Colors.grey.withOpacity(0.2),
                  //           // color of shadow
                  //           spreadRadius: 4,
                  //           blurRadius: 4,
                  //           offset: Offset(0, 3),
                  //         ),
                  //       ],
                  //     ),
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.only(left: 2),
                  //           child: Text(
                  //             'help_with_moodcheck',
                  //             style: theme.titleMedium?.copyWith(
                  //               fontSize: 19,
                  //               fontWeight: FontWeight.w400,
                  //             ),
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           height: 15,
                  //         ),
                  //         Row(
                  //           children: [
                  //             Container(
                  //               padding: EdgeInsets.symmetric(
                  //                 horizontal: 29,
                  //                 vertical: 10,
                  //               ),
                  //               decoration: BoxDecoration(
                  //                 color: theme.primaryColor,
                  //                 borderRadius: BorderRadius.circular(17),
                  //               ),
                  //               child: Text(
                  //                 '👍 {yes}',
                  //                 style: theme.bodyMedium?.copyWith(
                  //                   fontSize: 22,
                  //                   color: Colors.white,
                  //                   fontWeight: FontWeight.w700,
                  //                 ),
                  //               ),
                  //             ),
                  //             Container(
                  //               margin: EdgeInsets.only(left: 15),
                  //               padding: EdgeInsets.symmetric(
                  //                 horizontal: 1,
                  //                 vertical: 10,
                  //               ),
                  //               decoration: BoxDecoration(
                  //                 color: Colors.white,
                  //                 borderRadius: BorderRadius.circular(17),
                  //                 border: Border.all(
                  //                   color: theme.primaryColor,
                  //                   width: 2,
                  //                 ),
                  //               ),
                  //               child: Text(
                  //                 'no_thank_you',
                  //                 style: theme.bodyMedium?.copyWith(
                  //                   fontSize: 22,
                  //                   color: theme.primaryColor,
                  //                   fontWeight: FontWeight.w700,
                  //                 ),
                  //               ),
                  //             )
                  //           ],
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),

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
                  CustomDivider(),
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
                  CustomDivider(),
                  Text(
                    'Display Large',
                    style: theme.displayLarge,
                  ),
                  Text(
                    'Display Medium',
                    style: theme.displayMedium,
                  ),
                  Text(
                    'Display Small',
                    style: theme.displaySmall,
                  ),
                  Text(
                    'Headline Large',
                    style: theme.headlineLarge,
                  ),
                  Text(
                    'Hisplay Medium',
                    style: theme.headlineMedium,
                  ),
                  Text(
                    'Headline Small',
                    style: theme.headlineSmall,
                  ),
                  Text(
                    'Title Large',
                    style: theme.titleLarge,
                  ),
                  Text(
                    'Title Medium',
                    style: theme.titleMedium,
                  ),
                  Text(
                    'Title Small',
                    style: theme.titleSmall,
                  ),
                  Text(
                    'Label Large',
                    style: theme.labelLarge,
                  ),
                  Text(
                    'Label Medium',
                    style: theme.labelMedium,
                  ),
                  Text(
                    'Label Small',
                    style: theme.labelSmall,
                  ),
                  Text(
                    'Body Large',
                    style: theme.bodyLarge,
                  ),
                  Text(
                    'Body Medium',
                    style: theme.bodyMedium,
                  ),
                  Text(
                    'Body Small',
                    style: theme.bodySmall,
                  ),
                  Text(
                    'Note',
                    style: theme.note,
                  ),
                  Text(
                    'AppBarLarge',
                    style: theme.appBarLarge,
                  ),
                  Text(
                    'ListHeadingMedium',
                    style: theme.listHeadingMedium,
                  ),
                  //TODO:Ask Krishna, Color is set to black
                  Text(
                    'ToolTextStyle',
                    style: theme.toolTextStyle,
                  ),
                  CustomDivider(),

                  OutlinedButton(
                    style: theme.smallOutlineButton,
                    onPressed: () {},
                    child: const Text('Add Note'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    child: Text('Start!'),
                    style: theme.bottomSheetElevatedButton,
                    onPressed: () {},
                  ),
                ]),
          ),
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
