import 'package:flutter/material.dart';

import 'const.dart';
import 'firstscreen.dart';

class Newscreen extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
//constructor
  const Newscreen({
    Key? key,
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Color.fromARGB(255, 37, 32, 32),
          title: Center(
            child: const Text(
              "BMI CALCULATOR",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 27),
            ),
          ),
        ),
        // ignore: prefer_const_literals_to_create_immutables
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 25, left: 10),
              child: const Text(
                "Your Result",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: containerclr,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 58, 56, 55),
                        spreadRadius: 7,
                        blurRadius: 10,
                      )
                    ]),

                // ignore: sort_child_properties_last
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 45, bottom: 35),
                      child: Text(
                        resultText.toUpperCase(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromARGB(255, 252, 242, 58),
                            fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 45),
                      child: Text(
                        bmiResult,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 60),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, bottom: 50),
                      child: Text(
                        interpretation,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => FirstScreen()));
              },
              child: Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Recalculate),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Center(
                    child: const Text(
                      "Re-Calculate",
                      style: TextStyle(
                          color: RecalClr,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
