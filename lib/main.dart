import 'package:flutter/material.dart';
import 'package:fultter_e_commerce/pages/intro_page.dart';
import 'package:fultter_e_commerce/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const IntroPage(),
      theme: lightMode,
    );
  }
}
