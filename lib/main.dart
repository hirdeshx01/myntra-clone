import 'package:flutter/material.dart';

import 'package:myntra_clone/home/home_screen.dart';

final theme = ThemeData(useMaterial3: true);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const HomeScreen(),
    );
  }
}
