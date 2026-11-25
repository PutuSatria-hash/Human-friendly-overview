import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(const PengingatTugasApp());

class PengingatTugasApp extends StatelessWidget {
  const PengingatTugasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pengingat Tugas Kuliah',
      theme: ThemeData(colorSchemeSeed: Colors.indigo),
      home: const HomePage(),
    );
  }
}
