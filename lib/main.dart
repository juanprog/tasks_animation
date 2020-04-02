import 'package:flutter/material.dart';
import 'package:tasks_animation/screens/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasks Animation',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
