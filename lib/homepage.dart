import 'package:flutter/material.dart';
import 'package:bawo_game/board.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bawo'),
      ),
      body: const Board(),
    );
  }
}

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // Make children stretch horizontally
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            height: 50,
            child: const Center(
              child: Text(
                "Computer",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const Center(
            child: GameBoard(),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            height: 50,
            child: const Center(
              child: Text(
                "You",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
