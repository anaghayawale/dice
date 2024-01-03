import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/dice-$diceNumber.png',
            height: 200,
            width: 200,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: rollDice,
            child: const Text('Roll Dice'),
          ),
        ],
      ),
    );
  }
}
