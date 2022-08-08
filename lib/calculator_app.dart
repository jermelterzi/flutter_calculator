import 'package:calculator/pages/calculator_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return const MaterialApp(
      home: CalculatorPage(),
    );
  }
}
