import 'package:bawo_game/logic/game_engine.dart';
import 'package:bawo_game/logic/movement.dart';
import 'package:flutter/material.dart';

class GameEngineProvider with ChangeNotifier {
  int currentPlayer = 1;
  late GameEngine gameEngine;
  final List<int> moveIndex = [];
  GameEngineProvider() {
    gameEngine = GameEngine(this);
  }
  List<int> stonesInPits = List.generate(32, (index) => 2);
  void setStonesInPit(int pitIndex, int numberOfStones) {
    // Check if the pitIndex is valid
    if (pitIndex >= 0 && pitIndex < stonesInPits.length) {
      stonesInPits[pitIndex] = numberOfStones;
      notifyListeners();
    } else {
      print('Invalid pitIndex: $pitIndex');
    }
  }

  int getStonesInPit(int pitIndex) {
    // Check if the pitIndex is valid
    if (pitIndex >= 0 && pitIndex < stonesInPits.length) {
      return stonesInPits[pitIndex];
    } else {
      print('Invalid pitIndex: $pitIndex');
      return 0; // Return a default value or handle the error accordingly
    }
  }

  void updateStonesInPit(int pitIndex) {
    int currentStones = getStonesInPit(pitIndex);
    if (currentStones > 0) {
      setStonesInPit(pitIndex, currentStones - 1);
    } else {
      print('Pit $pitIndex is already empty');
    }
  }

  // int currentPlayer = 1;
  // GameEngine gameEngine = GameEngine(this);
  void switchPlayer() {
    currentPlayer = (currentPlayer == 1) ? 2 : 1;
    notifyListeners();
  }

  void handlePlayerTurn(int tappedPitIndex) {
    if (currentPlayer == 1) {
      updateStonesInPit(tappedPitIndex);
      // Movement movement = Movement();
      bool isAntiClockwise =
          Movement().isMoveAntiClockwise(this, moveIndex, tappedPitIndex);
      bool isClockwise =
          Movement().isMoveClockwise(this, moveIndex, tappedPitIndex);
      print("clockwise is $isClockwise" + "anticlockwise is $isAntiClockwise");
      moveIndex.add(tappedPitIndex);
      print(moveIndex);
      switchPlayer();
      gameEngine.makeMove(this);
    }
  }

  void makeMoveByEngine(int pitIndex) {
    updateStonesInPit(pitIndex);
    switchPlayer();
  }

  int getStartIndex() {
    return (currentPlayer - 1) * 8;
  }
}
