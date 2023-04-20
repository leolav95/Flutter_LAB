import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          surface: Color(0xFF0A0E21),
          onSurface: Colors.white,
        ),
        useMaterial3: true,
        textTheme: Typography.whiteCupertino,
      ),
      home: InputPage(),
    );
  }
}
