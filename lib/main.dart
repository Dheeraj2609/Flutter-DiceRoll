import 'package:flutter/material.dart';
import 'package:flutter_application_1st/gradient_container.dart';

void main() {
  runApp( const MaterialApp(
    home: Scaffold(
      body: GradientWidget(gradientColor: [
            Colors.deepPurple,
            Color.fromARGB(255, 191, 105, 168),
          ])
    ),
  ));
}
