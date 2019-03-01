import 'package:flutter/material.dart';
import 'package:myapp/snake/constant.dart';
import 'package:myapp/snake/piece.dart';
import 'package:myapp/snake/point.dart';
import 'package:myapp/snake/splash.dart';

enum GameState { SPLASH, RUNNING, VICTORY, FAILURE }

class Board extends StatefulWidget {
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  var _gameState = GameState.SPLASH;
  var _snakePiecePositions;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height - 100;

    return Container(
        width: width,
        height: height,
        color: const Color(0xFFFFFFFF),
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: _handleTap,
          child: Scaffold(
              body: Container(child: _getBoardChildBasedOnGameState())),
        ));
  }

  _getBoardChildBasedOnGameState() {
    switch (_gameState) {
      case GameState.SPLASH:
        return Splash();

      case GameState.RUNNING:
        return Piece();

      default:
        return Container();
    }
  }

  _moveFromSplashToRunningState() {
    _generateInitialSnakePosition();
    _changeGameState(GameState.RUNNING);
  }

  _changeGameState(GameState gameState) {
    setState(() {
      _gameState = gameState;
    });
  }

  _generateInitialSnakePosition() {
    setState(() {
      final double midPoint = (BOARD_SIZE / PIECE_SIZE / 2);
      _snakePiecePositions = [
        Point(midPoint, midPoint - 2),
        Point(midPoint, midPoint - 1),
        Point(midPoint, midPoint),
        Point(midPoint, midPoint + 1),
        Point(midPoint, midPoint + 2),
      ];
    });
  }

  _handleTap() {
    switch (_gameState) {
      case GameState.SPLASH:
        _moveFromSplashToRunningState();
        break;
      case GameState.RUNNING:
        _moveFromSplashToRunningState();
        break;
      case GameState.VICTORY:
        _moveFromSplashToRunningState();
        break;
      case GameState.FAILURE:
        _moveFromSplashToRunningState();
        break;
    }
  }
}
