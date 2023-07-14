import 'package:flutter/material.dart';

import 'package:myntra_clone/login/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        textTheme: const TextTheme().copyWith(
          headlineSmall: TextStyle(
            color: Colors.amber.shade600,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
