import 'package:flutter/material.dart';

import 'home_screen.dart';

void main () => runApp(StaticApp() );

class StaticApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen(),
    );
  }
}