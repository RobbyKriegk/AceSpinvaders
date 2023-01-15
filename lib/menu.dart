import 'package:ace_spinvaders/gameLogic/move_ship.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'game_screen.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Menu'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Ace Spinvaders!', style: TextStyle(fontSize: 40)),
              const SizedBox(height: 50),
              const Text('Menu', style: TextStyle(fontSize: 30)),
              Container(height: 400, width: 350, color: Colors.black),
              TextButton(
                  style: TextButton.styleFrom(
                      fixedSize: const Size(200, 50),
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GameScreen(),
                        ));
                  },
                  child: const Text('START', style: TextStyle(fontSize: 20))),
            ],
          ),
        ));
  }
}
