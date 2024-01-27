import 'package:flutter/material.dart';
import 'package:bawo_game/board.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bawo'),
        ),
        body: Board());
  }
}

class Board extends StatefulWidget {
  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GameBoard(),
      ),
    );
  }
}
