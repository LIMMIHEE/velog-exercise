import 'package:flutter/material.dart';
import 'package:velog_exercise/presentation/feat/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Velog 예제 모음 앱',
      home: MainScreen(),
    );
  }
}
