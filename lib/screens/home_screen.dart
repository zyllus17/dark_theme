import 'package:dark_theme/extensions/theme_extensions.dart';
import 'package:dark_theme/widgets/theme_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Theme'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: <Widget>[
              const SizedBox(
                height: 16,
              ),
              const ThemeSwitch(),
              Column(
                children: [
                  Text('Display Large', style: theme.displayLarge),
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
                ],
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
