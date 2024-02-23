import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(ball());
}

class ball extends StatefulWidget {
  const ball({super.key});

  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
  int num = 1;

  void blink() {
    setState(() {
      num = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[700],
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Center(
            child: Text('ASK ME ANYTHING'),
          ),
        ),


        body: SafeArea(
          child: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(onPressed: () {
                    blink();
                    print(num);
                  },
                    child: Image.asset('images/ball$num.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
