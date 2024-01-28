import 'package:bawo_game/bawoStone.dart';
import 'package:bawo_game/boardRow.dart';
import 'package:flutter/material.dart';
import 'package:bawo_game/pit.dart';

class GameBoard extends StatefulWidget {
  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  Stone stone = Stone(imagePath: 'lib/assets/bawo.png');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: GridView.builder(
      itemCount: 32,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
      itemBuilder: (context, index) => BawoPit(
        stone: stone,
      ),
    )));
  }
}
