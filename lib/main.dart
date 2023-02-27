import 'dart:ui';
import 'package:bmi_calculator/results_page.dart';
import 'package:flutter/material.dart';
import './input_page.dart';
import './results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff090C22),
        ),
        scaffoldBackgroundColor: Color(0xff070919),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/resultpage': (context) => results_page(),
      },
    );
  }
}
