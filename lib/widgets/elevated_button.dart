import 'package:dark_theme/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

class WorkingElevatedButton extends StatelessWidget {
  const WorkingElevatedButton({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Start!'),
      style: theme.bottomSheetElevatedButton,
      onPressed: () {},
    );
  }
}
