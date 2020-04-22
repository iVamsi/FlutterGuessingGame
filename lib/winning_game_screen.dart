import 'package:flutter/material.dart';
import 'package:guessinggame/routes/winning_screen_route.dart';

class WinningGameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WinningScreenRoute _route = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "The winning number was ${_route?.winningNumber ?? "UNKNOWN"}"
            ),
            RaisedButton(
              onPressed: Navigator.of(context).pop,
              child: Text(
                "Play Again"
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text(
            "YOU WON",
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
