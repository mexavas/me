import 'package:flutter/material.dart';
import 'navigation_bar.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          //foregroundColor: Color.fromRGBO(115, 123, 140, 1),
        ),
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(40, 44, 52, 1),
          //foregroundColor: Color.fromRGBO(115, 123, 140, 1),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(40, 44, 52, 1),
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: Color.fromRGBO(40, 44, 52, 1),
        ),
      ),
      home: const NavigationExample(),
    );
  }
}
