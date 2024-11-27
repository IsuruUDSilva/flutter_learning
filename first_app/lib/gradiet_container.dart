import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.bottomLeft;
const endAlignment = Alignment.topCenter;

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color, {super.key});

  const GradientContainer.purple({super.key})
      : color = const [Colors.indigo, Colors.deepPurple];

  final List<Color> color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
