import 'package:calculator/color.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String userInput = "";
  String result = "";

  List<String> buttonList = [
    "AC",
    "(",
    ")",
    "/",
    "7",
    "8",
    "9",
    "*",
    "4",
    "5",
    "6",
    "+",
    "1",
    "2",
    "3",
    "-",
    "C",
    "0",
    ".",
    "=",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColorDark,
        body: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.centerRight,
                      child: const Text(
                        "Input",
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }
}
