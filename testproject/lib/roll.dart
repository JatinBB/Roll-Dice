import 'package:flutter/material.dart';
import 'dart:math';
var randomize = Random();
class DiceRolller extends StatefulWidget{
  const DiceRolller({super.key});
  @override
  State<DiceRolller> createState(){
    return _DiceRolller();
  }
}
class _DiceRolller extends State<DiceRolller>{
  var current = 2;
  void rollDice(){
    setState(() {
      current = randomize.nextInt(6) + 1;
    });
  }

@override
Widget build(context){
  return Column(mainAxisSize: MainAxisSize.min,children:[
    Image.asset(
      'assets/images/dice-$current.png',
      width: 300,
    ),
    const SizedBox(height: 200),
    TextButton(
      onPressed: rollDice,
      style: TextButton.styleFrom(foregroundColor: Colors.white,
      textStyle: const TextStyle(
        fontSize: 40,
      )),
      child: const Text('Roll Dice'),
      )
  ]);
}
}