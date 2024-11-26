import 'package:flutter/material.dart';

var colorBlack = Colors.black;

class TextWrapper extends StatelessWidget {
  // const TextWrapper(String text, {super.key}): outerText = text; // THis is the old way to get the string from function arguments
  const TextWrapper(this.outerText, {super.key});

  final String outerText;

  @override
  Widget build(context) {
    return Text(
      outerText,
      style: TextStyle(
        color: colorBlack,
        fontSize: 48,
      ),
    );
  }
}
