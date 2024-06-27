import 'dart:math';

import 'package:flutter/material.dart';

class dice extends StatefulWidget {
  const dice({super.key});

  @override
  State<dice> createState() {
    return _diceState();
  }
}

class _diceState extends State<dice> {
  var currentdice = 1;

  void rollDice() {
    setState(() {
      currentdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/dice-$currentdice.png',
        width: 180,
      ),
      const SizedBox(height: 10),
      OutlinedButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 20,
            left: 20,
            right: 20,
          ),
          backgroundColor: Colors.black12,
          textStyle: const TextStyle(fontSize: 25, color: Colors.white10),
        ),
        child: const Text('Roll Dice'),
      )
    ]);
  }
}
