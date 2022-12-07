import 'package:flutter/material.dart';
import 'package:mobile_lab_week7_part2/e_commerce_screen_before.dart';
import 'deep_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green,
        appBarTheme: AppBarTheme(
          elevation: 10,
          titleTextStyle: TextTheme(
            headline6: TextStyle(
              fontFamily: 'LeckerliOne',
              fontSize: 24,
            ),
          ).headline6,
        ),
      ),
      home: ECommerceScreen(),
    );
  }
}
