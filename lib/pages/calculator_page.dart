import 'package:calculator/models/memory.dart';
import 'package:calculator/widgets/display.dart';
import 'package:calculator/widgets/keyboard.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final Memory memory = Memory();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Display(text: memory.value),
        Keyboard(callback: _onPressed),
      ],
    );
  }

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }
}
