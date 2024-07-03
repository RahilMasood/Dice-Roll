import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  int currDice = 1;
  void rollDice() {
    setState(() {
      currDice = randomizer.nextInt(6) + 1;
      print(currDice);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/$currDice.jpeg', height: 250, width: 250),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
              onPressed: rollDice, child: const Text('Click here to Roll'))
        ],
      ),
    );
  }
}
