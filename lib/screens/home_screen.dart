import 'package:dark_theme/constants/colors.dart';
import 'package:dark_theme/extensions/theme_extensions.dart';
import 'package:dark_theme/screens/toolkit_category_screen.ui.dart';
import 'package:dark_theme/screens/toolkit_screen.ui.dart';
import 'package:dark_theme/widgets/elevated_button.dart';
import 'package:dark_theme/widgets/text_testing.dart';
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
              TextTesting(theme: theme),
              // ToolKitCategory(),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: theme.containerColor,
                  boxShadow: [theme.boxShadow],
                ),
                child: Text('Hello'),
              )
              // ToolKitCategory(),
              // TextTesting(theme: theme)
            ]),
          ),
        ),
      ),
    );
  }
}
