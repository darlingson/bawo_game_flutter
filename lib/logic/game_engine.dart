import 'dart:math';
import 'package:bawo_game/logic/game_engine_provider.dart';

class GameEngine {
  final GameEngineProvider provider;

  GameEngine(this.provider);

  void playTurn() {
    int randomIndex = generateRandomIndex();

    provider.updateStonesInPit(randomIndex);
  }

  int generateRandomIndex() {
    Random random = Random();
    return random.nextInt(provider.stonesInPits.length);
  }
}
