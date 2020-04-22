import 'package:flutter/material.dart';
import 'package:guessinggame/routes/game_screen_route.dart';
import 'package:guessinggame/routes/winning_screen_route.dart';
import 'package:guessinggame/winning_game_screen.dart';
import 'game_screen.dart';

class GuessingGameApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Guessing Game",
      initialRoute: GameScreenRoute.routeName,
      routes: {
        GameScreenRoute.routeName: (context) => GameScreen(),
        WinningScreenRoute.routeName: (context) => WinningGameScreen()
      },
    );
  }
}
