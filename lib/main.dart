import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: Dices(),
      ),
    ),
  );
}

class Dices extends StatefulWidget {
  @override
  _DicesState createState() => _DicesState();
}

class _DicesState extends State<Dices> {
  var upperDiceNr = 1;
  var lowerDiceNr = 1;
  Random random = new Random();

  void randomize() {
    setState(() {
      upperDiceNr = random.nextInt(6) + 1;
      lowerDiceNr = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: FlatButton(
                    onPressed: () {
                      randomize();
                    },
                    child: Image.asset('images/dice$upperDiceNr.png')),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: FlatButton(
                    onPressed: () {
                      randomize();
                    },
                    child: Image.asset('images/dice$lowerDiceNr.png')),
              )),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
