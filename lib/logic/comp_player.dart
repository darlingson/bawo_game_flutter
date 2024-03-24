import 'package:bawo_game/logic/game_engine_provider.dart';

class CompPlayer {
  GameEngineProvider gameEngineProvider = GameEngineProvider();
  List<int> currentBoardState = [];
  void calculateMove() {
    currentBoardState = gameEngineProvider.getBoardState();
  }

  void makeMove() {}
}
