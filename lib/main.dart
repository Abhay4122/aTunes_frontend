import 'package:atunes/app.dart';
import 'package:flutter/material.dart';
import 'screens/app.dart';

void main() {
  runApp(const AtunesApp());
}

class AtunesApp extends StatelessWidget {
  const AtunesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
