import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const DicePage());
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void randomNum() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Center(child: Text('Dice')),
          ),
          backgroundColor: Colors.blue,
          body: Center(
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                    onPressed: () {
                      randomNum();
                    },
                  ),
                ),
                Expanded(
                  child: OutlinedButton(
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                    onPressed: () {
                      randomNum();
                    },
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
