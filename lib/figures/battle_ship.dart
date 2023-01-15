import 'package:flutter/material.dart';

class BattleShip extends StatefulWidget {
  const BattleShip({super.key});

  @override
  State<BattleShip> createState() => _BattleShipState();
}

class _BattleShipState extends State<BattleShip> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 10,
          width: 10,
          color: Colors.red,
        ),
        Container(
          height: 30,
          width: 50,
          color: Colors.red,
        ),
      ],
    );
  }
}
