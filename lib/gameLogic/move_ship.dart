import 'package:ace_spinvaders/figures/battle_ship.dart';
import 'package:ace_spinvaders/playground.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MoveShip extends StatefulWidget {
  const MoveShip({super.key});

  @override
  State<MoveShip> createState() => _MoveShipState();
}

class _MoveShipState extends State<MoveShip> {
  double leftSpace = 0;
  double rightSpace = 0;

  @override
  Widget build(BuildContext context) {
    // KeyboardListener that listens to a and d keys
    return KeyboardListener(
      focusNode: FocusNode(),
      onKeyEvent: (event) {
        // move ship to the left
        if (event.logicalKey == LogicalKeyboardKey.keyA) {
          setState(() {
            leftSpace += 10;
          });
        } else if (event.logicalKey == LogicalKeyboardKey.keyD) {
          setState(() {
            rightSpace += 10;
          });
        }
      },
      child: Playground(leftSpace: leftSpace, rightSpace: rightSpace),
    );
  }
}
