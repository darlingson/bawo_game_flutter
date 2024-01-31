import 'package:bawo_game/logic/game_engine_provider.dart';

class Movement {
  bool isMoveClockwise(
      GameEngineProvider provider, int previousIndex, int newIndex) {
    int realStartIndex = provider.getStartIndex();
    int startRow = realStartIndex ~/ 8;
    int startColumn = realStartIndex % 8;
    int prevRow = previousIndex ~/ 8;
    int prevColumn = previousIndex % 8;
    int newRow = newIndex ~/ 8;
    int newColumn = newIndex % 8;

    int relativePrevRow = (prevRow - startRow + 4) % 4;
    int relativePrevColumn = (prevColumn - startColumn + 8) % 8;
    int relativeNewRow = (newRow - startRow + 4) % 4;
    int relativeNewColumn = (newColumn - startColumn + 8) % 8;

    return (relativeNewRow * 8 + relativeNewColumn) >
        (relativePrevRow * 8 + relativePrevColumn);
  }

  bool isMoveAntiClockwise(
      GameEngineProvider provider, int previousIndex, int newIndex) {
    int realStartIndex = provider.getStartIndex();

    int startRow = realStartIndex ~/ 8;
    int startColumn = realStartIndex % 8;
    int prevRow = previousIndex ~/ 8;
    int prevColumn = previousIndex % 8;
    int newRow = newIndex ~/ 8;
    int newColumn = newIndex % 8;

    int relativePrevRow = (prevRow - startRow + 4) % 4;
    int relativePrevColumn = (prevColumn - startColumn + 8) % 8;
    int relativeNewRow = (newRow - startRow + 4) % 4;
    int relativeNewColumn = (newColumn - startColumn + 8) % 8;

    return (relativePrevRow * 8 + relativePrevColumn) >
        (relativeNewRow * 8 + relativeNewColumn);
  }

  bool isMoveLegal(
      GameEngineProvider provider, int previousIndex, int newIndex) {
    return !(isMoveClockwise(provider, previousIndex, newIndex) ||
        isMoveAntiClockwise(provider, previousIndex, newIndex));
  }
}
