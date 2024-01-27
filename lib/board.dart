import 'package:bawo_game/boardRow.dart';
import 'package:flutter/material.dart';

class GameBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      BoardRow(),
      BoardRow(),
      BoardRow(),
      BoardRow(),
    ])));
  }
}
