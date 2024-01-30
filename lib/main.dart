import 'package:bawo_game/logic/game_engine_provider.dart';
import 'package:bawo_game/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          GameEngineProvider(), // Initialize GameEngineProvider
      child: MaterialApp(
        home: Scaffold(
          body: Center(
            child: Home(),
          ),
        ),
        debugShowCheckedModeBanner: false, // Remove the debug banner
      ),
    );
  }
}
