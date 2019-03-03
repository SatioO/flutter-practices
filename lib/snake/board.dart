import "dart:math";
import "dart:async";
import 'package:flutter/material.dart';
import 'package:myapp/snake/constant.dart';
import 'package:myapp/snake/piece.dart';
import 'package:myapp/snake/point.dart';
import 'package:myapp/snake/splash.dart';

enum GameState { SPLASH, RUNNING, VICTORY, FAILURE }
enum Direction { LEFT, RIGHT, UP, DOWN }

class Board extends StatefulWidget {
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  var _gameState = GameState.SPLASH;
  Timer _timer;
  Direction _direction = Direction.UP;
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
          child: Scaffold(body: _getBoardChildBasedOnGameState())),
    );
  }

  _getBoardChildBasedOnGameState() {
    switch (_gameState) {
      case GameState.SPLASH:
        return Splash();

      case GameState.RUNNING:
        List<Positioned> _points = [];

        _snakePiecePositions.forEach((position) {
          _points.add(Positioned(
            top: position.x * PIECE_SIZE,
            left: position.y * PIECE_SIZE,
            child: Piece(),
          ));
        });

        return Stack(children: _points);

      case GameState.VICTORY:
        break;

      case GameState.FAILURE:
        break;
    }
  }

  // _generateApplePosition() {
  //   Random random = Random();
  //   var min = 0;
  //   var max = BOARD_SIZE ~/ PIECE_SIZE;
  //   print(max);
  //   print(random.nextInt(10));
  // }

  _onTimerTick(timer) {
    // print(_snakePiecePositions[0].y);
    // print(_snakePiecePositions[1].y);
    // print(_snakePiecePositions[2].y);
    // print(_snakePiecePositions[3].y);
    // print("------------------------");
    // // setState(() {
    // _snakePiecePositions.insert(1, _getNewHeadPosition());
    // _snakePiecePositions.removeLast();
    // });
  }

  _getNewHeadPosition() {
    var newHeadPos;

    switch (_direction) {
      case Direction.LEFT:
        var currentHeadPos = _snakePiecePositions.first;
        newHeadPos = Point(currentHeadPos.x - 1, currentHeadPos.y);
        break;

      case Direction.RIGHT:
        var currentHeadPos = _snakePiecePositions.first;
        newHeadPos = Point(currentHeadPos.x + 1, currentHeadPos.y);
        break;

      case Direction.UP:
        var currentHeadPos = _snakePiecePositions.first;
        newHeadPos = Point(currentHeadPos.x, currentHeadPos.y - 1);
        break;

      case Direction.DOWN:
        var currentHeadPos = _snakePiecePositions.first;
        newHeadPos = Point(currentHeadPos.x, currentHeadPos.y + 1);
        break;
    }

    return newHeadPos;
  }

  _moveFromSplashToRunningState() {
    _generateInitialSnakePosition();
    _changeGameState(GameState.RUNNING);
    // _generateApplePosition();
    _timer = Timer.periodic(Duration(seconds: 1), _onTimerTick);
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
