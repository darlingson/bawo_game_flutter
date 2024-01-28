import 'package:bawo_game/bawoStone.dart';
import 'package:flutter/material.dart';
import 'package:bawo_game/pit.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  Stone stone = Stone(imagePath: 'lib/assets/bawo.png');
  List<Stone> stones =
      List.generate(32, (index) => Stone(imagePath: 'lib/assets/bawo.png'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: GridView.builder(
      itemCount: 32,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
      itemBuilder: (context, index) => BawoPit(
        stone: stones[index],
      ),
    )));
  }
}
