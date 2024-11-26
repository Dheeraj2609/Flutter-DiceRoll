import 'dart:math';
import 'package:flutter/material.dart';

final randomNumber = Random();

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<RollDice> {
  int diceNumber = 3;
  void rollTheDice() {
    setState(() {
      diceNumber = randomNumber.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$diceNumber.png',
              width: 180,
              height: 180,
            ),
            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: rollTheDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
                side: const BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
                foregroundColor: const Color.fromARGB(255, 241, 237, 237),
                textStyle: const TextStyle(
                  fontSize: 25,
                ),
              ),
              child: const Text("Roll to Play"),
            )
          ],
        );
  }
}