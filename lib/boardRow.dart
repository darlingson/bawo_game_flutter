import 'package:bawo_game/boardColumn.dart';
import 'package:flutter/material.dart';

class BoardRow extends StatelessWidget {
  const BoardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
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
