import 'package:flutter/material.dart';
import 'package:myapp/snake/constant.dart';
import 'package:myapp/snake/splash.dart';

enum GameState { SPLASH, RUNNING, VICTORY, FAILURE }

class Board extends StatefulWidget {
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  var _gameState = GameState.SPLASH;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: BOARD_SIZE,
      height: BOARD_SIZE,
      color: const Color(0xFFFFFFFF),
      child: _getBoardChildBasedOnGameState(),
    );
  }

  _getBoardChildBasedOnGameState() {
    switch (_gameState) {
      case GameState.SPLASH:
        return Splash();

      default:
        return Container();
    }
  }
}
