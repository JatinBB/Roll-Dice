import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:testproject/gtadientContainer.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 240, 224, 224),
        body: GradientContainer(Color.fromARGB(255, 9, 44, 133), Color.fromARGB(255, 167, 194, 228)),

      ),
    ),
  );
}
