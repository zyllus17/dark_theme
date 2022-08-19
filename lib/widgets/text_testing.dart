import 'package:dark_theme/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class TextTesting extends StatelessWidget {
  const TextTesting({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        //BUG:Color is not changing properly
        Text(
          'ToolTextStyle',
          style: theme.toolTextStyle,
        ),
      ],
    );
  }
}
