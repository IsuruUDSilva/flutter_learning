import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  void onPressed() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            // padding: const EdgeInsets.all(20),
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll the dice'),
        ),
      ],
    );
  }
}
