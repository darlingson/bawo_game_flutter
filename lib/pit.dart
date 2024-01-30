import 'package:bawo_game/bawoStone.dart';
import 'package:flutter/material.dart';

class BawoPit extends StatefulWidget {
  final int numberOfStones;

  const BawoPit({
    Key? key,
    required this.numberOfStones,
  }) : super(key: key);

  @override
  _BawoPitState createState() => _BawoPitState();
}

class _BawoPitState extends State<BawoPit> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    List<Stone> stones = List.generate(
      widget.numberOfStones,
      (index) => Stone(imagePath: 'lib/assets/bawo.jpg'),
    );

    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = true;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          color: isTapped ? Colors.red : Colors.yellow,
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
