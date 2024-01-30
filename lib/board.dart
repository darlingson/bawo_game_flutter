import 'package:bawo_game/bawoStone.dart';
import 'package:flutter/material.dart';
import 'package:bawo_game/pit.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  Stone stone = Stone(imagePath: 'lib/assets/bawo.jpg');
  List<Stone> stones =
      List.generate(32, (index) => Stone(imagePath: 'lib/assets/bawo.jpg'));
  void handlePitTap(int index) {
    // Add your logic here to handle the pit tap
    print('Pit $index has been clicked!');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      child: Center(
          child: GridView.builder(
        itemCount: 32,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => handlePitTap(index),
          child: BawoPit(
            pitIndex: index,
          ),
        ),
      )),
    );
  }
}
