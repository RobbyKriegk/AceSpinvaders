import 'package:ace_spinvaders/figures/battle_ship.dart';
import 'package:flutter/material.dart';

class Playground extends StatefulWidget {
  const Playground({super.key, this.leftSpace = 0, this.rightSpace = 0});

  final double leftSpace;
  final double rightSpace;

  @override
  State<Playground> createState() => _PlaygroundState();
}

class _PlaygroundState extends State<Playground> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        height: 400,
        width: 350,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: widget.leftSpace),
                BattleShip(),
                SizedBox(width: widget.rightSpace),
              ],
            ),
          ],
        ));
  }
}
