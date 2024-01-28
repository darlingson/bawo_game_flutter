import 'package:flutter/material.dart';
import 'package:bawo_game/board.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bawo'),
        ),
        body: const Board());
  }
}

class Board extends StatefulWidget {
  const Board({super.key});

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: GameBoard(),
      ),
    );
  }
}
