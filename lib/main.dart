import 'package:flutter/material.dart';
import 'package:yoga_app_ui/view/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yoga App',
      theme: ThemeData.dark().copyWith(),
      home: LoginView(),
    );
  }
}
