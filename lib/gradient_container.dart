import 'package:flutter/material.dart';
import 'package:flutter_application_1st/roll_dice.dart';

const alignmentTopRight = Alignment.topRight;
const alignmentBottomLeft = Alignment.bottomLeft;

class GradientWidget extends StatelessWidget {
  // const GradientWidget({key}): super(key: key);
  const GradientWidget({super.key, required this.gradientColor});

  final List<Color> gradientColor;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColor,
          begin: alignmentTopRight,
          end: alignmentBottomLeft,
        ),
      ),
      child: const Center(
        child: RollDice(),
      ),
    );
  }
}
