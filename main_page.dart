import 'dart:developer';

import 'package:flutter/material.dart';

import 'calc_button.dart';
import 'package:math_expressions/math_expressions.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String res = "";
  String answer = "Result";

  void equalPressed() {
    String finaluserinput = res;

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
    log(answer);
    setState(() {});
  }

  void keyboardInputHandler(String e) {
    setState(() {
      //numbers
      if (e == "0") {
        res += "0";
      } else if (e == "1") {
        res += "1";
      } else if (e == "2") {
        res += "2";
      } else if (e == "3") {
        res += "3";
      } else if (e == "4") {
        res += "4";
      } else if (e == "5") {
        res += "5";
      } else if (e == "6") {
        res += "6";
      } else if (e == "7") {
        res += "7";
      } else if (e == "7") {
        res += "7";
      } else if (e == "8") {
        res += "8";
      } else if (e == "9") {
        res += "9";
      }

      //operators
      if (e == "+") {
        res += "+";
      } else if (e == "-") {
        res += "-";
      } else if (e == "*") {
        res += "*";
      } else if (e == "/") {
        res += "/";
      }

      //decimal key
      if (e == ".") {
        res += ".";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                res,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 50),
                textAlign: TextAlign.right,
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          answer,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                              color: Colors.black, fontSize: 40),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    title: "C",
                    color: Colors.red,
                    onPressed: () {
                      res = "";
                      answer = "";
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: NewWidget(
                    title: "1",
                    color: Colors.grey,
                    onPressed: () {
                      keyboardInputHandler("1");
                    },
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    title: "2",
                    color: Colors.grey,
                    onPressed: () {
                      keyboardInputHandler("2");
                    },
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    title: "3",
                    color: Colors.grey,
                    onPressed: () {
                      keyboardInputHandler("3");
                    },
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    title: "+",
                    color: Colors.orange,
                    onPressed: () {
                      keyboardInputHandler("+");
                    },
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: NewWidget(
                    title: "4",
                    color: Colors.grey,
                    onPressed: () {
                      keyboardInputHandler("4");
                    },
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    title: "5",
                    color: Colors.grey,
                    onPressed: () {
                      keyboardInputHandler("5");
                    },
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    title: "6",
                    color: Colors.grey,
                    onPressed: () {
                      keyboardInputHandler("6");
                    },
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    title: "-",
                    color: Colors.orange,
                    onPressed: () {
                      keyboardInputHandler("-");
                    },
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: NewWidget(
                    title: "7",
                    color: Colors.grey,
                    onPressed: () {
                      keyboardInputHandler("7");
                    },
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    title: "8",
                    color: Colors.grey,
                    onPressed: () {
                      keyboardInputHandler("8");
                    },
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    title: "9",
                    color: Colors.grey,
                    onPressed: () {
                      keyboardInputHandler("9");
                    },
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    title: "*",
                    color: Colors.orange,
                    onPressed: () {
                      keyboardInputHandler("*");
                    },
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: NewWidget(
                    title: "/",
                    color: Colors.orange,
                    onPressed: () {
                      keyboardInputHandler("/");
                    },
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    title: "0",
                    color: Colors.grey,
                    onPressed: () {
                      keyboardInputHandler("0");
                    },
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    title: ".",
                    color: Colors.orange,
                    onPressed: () {
                      keyboardInputHandler(".");
                    },
                  ),
                ),
                Expanded(
                  child: NewWidget(
                    title: "=",
                    color: Colors.orange,
                    onPressed: () {
                      equalPressed();
                    },
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
