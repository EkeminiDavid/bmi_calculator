//By Ekemini

import 'package:flutter/material.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0XFF0A0E21),
        appBarTheme: AppBarTheme(
          color: Color(0XFF0A0E21),
        ),
      ),
      home: InputPage(),
    );
  }
}
