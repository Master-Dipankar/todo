import 'package:flutter/material.dart';
import 'package:todo/slides/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.cyan,
        ),
      ),
      home: const HomePage(),
      // theme: ThemeData.dark(),
    );
  }
}
