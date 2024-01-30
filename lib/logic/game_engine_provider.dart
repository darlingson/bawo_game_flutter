import 'package:flutter/material.dart';

class GameEngineProvider with ChangeNotifier {
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
}
