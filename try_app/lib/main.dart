import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Dicee',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicevalue = 1;
  int rightdicevalue = 1;

  void DiceChangeButton(){
    setState(() {
      leftdicevalue = Random().nextInt(6) + 1;
      rightdicevalue = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                DiceChangeButton();
              },
              child: Image.asset('images/dice$leftdicevalue.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                DiceChangeButton();
              },
              child: Image.asset('images/dice$rightdicevalue.png'),
            ),
          ),
        ],
      ),
    );
  }
}
