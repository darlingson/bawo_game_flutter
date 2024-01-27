import 'package:bawo_game/boardColumn.dart';
import 'package:flutter/material.dart';

class BoardRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      BoardColumn(),
      BoardColumn(),
      BoardColumn(),
      BoardColumn(),
      BoardColumn(),
      BoardColumn(),
      BoardColumn(),
      BoardColumn(),
    ]);
  }
}
