import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {

  int leftDice =1, rightDice =1;
  void updateDiceState()
  {
    setState(() {
      leftDice = Random().nextInt(6)+1;
      rightDice = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dice'),
          centerTitle: true,
          backgroundColor: Colors.green.shade400,
        ),
        backgroundColor: Colors.green.shade900,
        body: Center(
          child: SafeArea(
            child: Row(
              children: <Widget>[
                Expanded(    // use expanded to stop overflow image or anything inside a screen
                  child: FlatButton(
                    onPressed: () {
                      updateDiceState();
                    },
                    child: Image.asset('images/dice$leftDice.png'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      updateDiceState();
                    },
                    child: Image.asset('images/dice$rightDice.png'),
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
