import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:guessinggame/routes/winning_screen_route.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int numberGuess;
  int correctAnswer;

  @override
  void initState() {
    _restartGame();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Guessing Game",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_upward,
                  size: 36.0,
                ),
                onPressed: _upArrowClicked,
              ),
            ),
            Text("You Selected $numberGuess"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_downward,
                  size: 36.0,
                ),
                onPressed: _downArrowClicked,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _checkAnswer,
        child: Icon(
          Icons.add
        ),
      ),
    );
  }

  void _upArrowClicked() {
    if (numberGuess < 10) {
      setState(() {
        numberGuess++;
      });
    }
  }

  void _downArrowClicked() {
    if (numberGuess > 1) {
      setState(() {
        numberGuess--;
      });
    }
  }


  void _checkAnswer() {
    if (numberGuess == correctAnswer) {
      Navigator.of(context).pushNamed(WinningScreenRoute.routeName, arguments: WinningScreenRoute(winningNumber: correctAnswer));
      _restartGame();
    }
  }

  void _restartGame() {
    setState(() {
      numberGuess = 1;
      correctAnswer = Random().nextInt(10);
      print("Actual value of $correctAnswer");
    });
  }
}
