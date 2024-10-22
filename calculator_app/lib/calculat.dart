import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class calculate extends StatefulWidget {
  const calculate({super.key});

  @override
  State<calculate> createState() => _calculateState();
}

class _calculateState extends State<calculate> {
  List<String> num = [
    'c',
    '+/-',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    '*',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];
  String input = '';
  String output = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'calculator',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            backgroundColor: Colors.blue,
          ),
          body: Column(children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(5),
                width: double.infinity,
                child: Text(
                  input,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(5),
                width: double.infinity,
                child: Text(
                  output,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 8,
              child: GridView.builder(
                itemCount: num.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        if (num[index] == 'c') {
                          input = "";
                          output = '';
                        } else if (num[index] == 'DEL') {
                          input = input.substring(0, input.length - 1);
                        } else if (num[index] == '*' ||
                            num[index] == '-' ||
                            num[index] == '/' ||
                            num[index] == '%' ||
                            num[index] == '+') {
                          if (input.endsWith('%') ||
                              input.endsWith('-') ||
                              input.endsWith('+') ||
                              input.endsWith('*') ||
                              input.endsWith('/')) {
                            null;
                          } else if (num[index] == '=') {
                        Expression exp = Parser().parse(input);
                        double result =
                            exp.evaluate(EvaluationType.REAL, ContextModel());
                        setState(() {
                          output = result.toString();
                        });
                      } else {
                        setState(() {
                          input += num[index];
                        });
                      } 
                        }
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          color: mybackgroungcolor(num[index]),
                          borderRadius: BorderRadius.circular(0)),
                      alignment: Alignment.center,
                      child: Text(
                        num[index],
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w400),
                      ),
                    ),
                  );
                },
              ),
            )
          ])),
    );
  }

  Color? mybackgroungcolor(String x) {
    if (x == 'c' || x == '+/-' || x == '%' || x == 'DEL') {
      return Color.fromARGB(255, 226, 243, 251);
    } else if (x == '/' || x == '*' || x == '-' || x == '+') {
      return Colors.blue;
    } else if (x == '=') {
      return Colors.orange;
    }
  }
}
