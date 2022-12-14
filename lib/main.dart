import 'package:flutter/material.dart';
import 'package:udemycourse/modules/login/login_screen.dart';
import 'modules/counter/counter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
