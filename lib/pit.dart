import 'package:bawo_game/bawoStone.dart';
import 'package:flutter/material.dart';

class BawoPit extends StatelessWidget {
  final int numberOfStones;

  const BawoPit({Key? key, required this.numberOfStones}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Stone> stones = List.generate(
      numberOfStones,
      (index) => Stone(imagePath: 'lib/assets/bawo.jpg'),
    );

    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        color: Colors.yellow,
      ),
      child: GridView.builder(
        itemCount: stones.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          return Image.asset(stones[index].imagePath);
        },
      ),
    );
  }
}
