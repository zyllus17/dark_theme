import 'package:dark_theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
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
    final themeNotifier = ref.watch(themeNotifierProvider);

    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: themeNotifier.themeMode,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      home: const HomePage(),
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(themeNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic Theme"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _singleTile(
            title: "Dark Theme",
            themeMode: ThemeMode.dark,
            notifier: notifier,
          ),
          _singleTile(
            title: "Light Theme",
            themeMode: ThemeMode.light,
            notifier: notifier,
          ),
          _singleTile(
            title: "System Theme",
            themeMode: ThemeMode.system,
            notifier: notifier,
          ),
        ],
      ),
    );
  }

  Widget _singleTile({
    required String title,
    required ThemeMode themeMode,
    required ThemeNotifier notifier,
  }) {
    return RadioListTile<ThemeMode>(
      value: themeMode,
      title: Text(title),
      groupValue: notifier.themeMode,
      onChanged: (val) {
        if (val != null) notifier.setTheme(val);
      },
    );
  }
}

class ThemeNotifier extends ChangeNotifier {
  // Define your default thememode here
  ThemeMode themeMode = ThemeMode.system;
  SharedPreferences? prefs;

  ThemeNotifier() {
    _init();
  }

  _init() async {
    // Get the stored theme from shared preferences
    prefs = await SharedPreferences.getInstance();

    int theme = prefs?.getInt("theme") ?? themeMode.index;
    themeMode = ThemeMode.values[theme];
    notifyListeners();
  }

  setTheme(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
    // Save the selected theme using shared preferences
    prefs?.setInt("theme", mode.index);
  }
}

final themeNotifierProvider =
    ChangeNotifierProvider<ThemeNotifier>((_) => ThemeNotifier());
