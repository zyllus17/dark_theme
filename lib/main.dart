import 'dart:io';
import 'package:dark_theme/constants/colors.dart';
import 'package:dark_theme/theme_state/theme_mode.notifier.dart';
import 'package:dark_theme/themes/dark_theme.dart';
import 'package:dark_theme/themes/light_theme.dart';
import 'package:dark_theme/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Directory themeDirectory = await getTemporaryDirectory();
  await Hive.initFlutter(themeDirectory.toString());
  await Hive.openBox('prefs');

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lightThemeData = ref.watch(lightThemeProvider);
    final darkThemeData = ref.watch(darkThemeProvider);

    final currentThemeMode = ref.watch(themeProvider);
    return MaterialApp(
      title: 'Flutter Theme',
      themeMode: currentThemeMode.themeMode,
      theme: lightThemeData,
      darkTheme: darkThemeData,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
