import 'dart:io';

import 'package:example/example_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    debugPrint(Platform.environment.toString());
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(Brightness.dark),
      home: ExampleScreen(),
    );
  }

  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(
      primarySwatch: Colors.blue,
      brightness: brightness,
      useMaterial3: true,
    );

    return baseTheme.copyWith();
  }
}
