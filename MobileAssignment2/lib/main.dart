import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() => runApp(StopwatchApp());

class StopwatchApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: LoginScreen(),
    );
  }
}