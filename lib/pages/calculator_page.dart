import 'package:calculator/widgets/display.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Display(text: '123.45'),
        Text('Keyboard'),
      ],
    );
  }
}
