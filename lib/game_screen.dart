import 'package:ace_spinvaders/gameLogic/move_ship.dart';
import 'package:ace_spinvaders/playground.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game'),
      ),
      body: Center(
          child: Column(
        children: [
          const Text('Ace Spinvaders!', style: TextStyle(fontSize: 40)),
          const SizedBox(height: 90),
          const Playground(),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: const Size(70, 50),
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white),
                  onPressed: (() {}),
                  child: const Icon(Icons.arrow_left)),
              const SizedBox(width: 20),
              TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: const Size(70, 50),
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white),
                  onPressed: (() {}),
                  child: const Icon(Icons.arrow_right)),
              const SizedBox(width: 60),
              TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: const Size(100, 50),
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white),
                  onPressed: (() {}),
                  child: const Text('FIRE!'))
            ],
          )
        ],
      )),
    );
  }
}
