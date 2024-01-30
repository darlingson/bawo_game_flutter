import 'package:bawo_game/bawoStone.dart';
import 'package:bawo_game/logic/game_engine_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BawoPit extends StatelessWidget {
  final int pitIndex;

  const BawoPit({
    Key? key,
    required this.pitIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gameEngineProvider = Provider.of<GameEngineProvider>(context);
    final int numberOfStones = gameEngineProvider.getStonesInPit(pitIndex);

    List<Stone> stones = List.generate(
      numberOfStones,
      (index) => Stone(imagePath: 'lib/assets/bawo.jpg'),
    );

    return GestureDetector(
      onTap: () {
        print('Pit $pitIndex has been tapped!');
        // gameEngineProvider.updateStonesInPit(pitIndex);
        gameEngineProvider.handlePlayerTurn(pitIndex);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          color: Colors.yellow,
        ),
        child: GridView.builder(
          itemCount: stones.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemBuilder: (context, index) {
            return Image.asset(stones[index].imagePath);
          },
        ),
      ),
    );
  }
}
