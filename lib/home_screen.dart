import 'package:dark_theme/main.dart';
import 'package:dark_theme/widget/change_theme_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final text = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? 'Dark Theme'
        : 'Light Theme';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Theme App'),
        actions: [
          // ChangeThemeButtonWidget(),
        ],
      ),
      body: Center(
        child: Text(
          'Hello $text',
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
