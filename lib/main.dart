import 'package:flutter/material.dart';
import 'package:roll_the_dice/dice.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: Scaffold(body: DiceRoller())));
}
