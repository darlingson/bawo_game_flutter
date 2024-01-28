import 'package:bawo_game/bawoStone.dart';
import 'package:flutter/material.dart';

class BawoPit extends StatelessWidget {
  final Stone? stone;
  const BawoPit({super.key, this.stone});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        color: Colors.yellow,
      ),
      child: stone != null ? Image.asset(stone!.imagePath) : null,
    );
  }
}
