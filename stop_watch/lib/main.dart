import 'package:flutter/material.dart';
import 'package:stop_watch/login_screen.dart';
import 'package:stop_watch/stopwatch.dart';

void main() => runApp(StopwatchApp());

class StopwatchApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StopWatch(),
    );
  }
}