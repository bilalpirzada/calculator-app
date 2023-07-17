import 'package:calculator/color.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String userInput = "input";
  String result = "0";

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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userInput,
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      result,
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: gridColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    )),
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: buttonList.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.3,
                      crossAxisCount: 4,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemBuilder: (BuildContext context, index) {
                      return customButton(buttonList[index]);
                    }),
              ),
            ),
          ],
        ));
  }

  Widget customButton(String text) {
    return Container(
      decoration: BoxDecoration(
          color: buttonColorDark, borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        //splashColor: Colors.red,
        onTap: () {},
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: getColor(text)),
          ),
        ),
      ),
    );
  }

  getColor(String text) {
    switch (text) {
      case "AC":
      case "(":
      case ")":
        return greenColor;

      case "/":
      case "*":
      case "+":
      case "-":
      case "=":
        return redColor;
      default:
        return Colors.white;
    }
  }
}
