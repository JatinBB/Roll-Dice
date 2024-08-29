import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';

var randomize = Random();

class DiceRolller extends StatefulWidget {
  const DiceRolller({super.key});

  @override
  State<DiceRolller> createState() {
    return _DiceRolller();
  }
}

class _DiceRolller extends State<DiceRolller> {
  var current = 2;
  var imageKey = UniqueKey();
  final player = AudioPlayer(); // Create an AudioPlayer instance

  @override
  void dispose() {
    player.dispose(); // Dispose of the player when not needed
    super.dispose();
  }

  void rollDice() async {
    setState(() {
      current = randomize.nextInt(6) + 1;
      imageKey = UniqueKey(); // Assign a new key to trigger the animation even if the number is the same
    });

    // Play dice sound
    await player.play(AssetSource('sound/dice-roll.mp3')); // Ensure the path matches your pubspec.yaml

    // Stop the audio after 2 seconds without blocking the UI
    Future.delayed(const Duration(seconds: 1), () {
      player.stop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return RotationTransition(
              turns: animation,
              child: child,
            );
          },
          child: Image.asset(
            'assets/images/dice-$current.png',
            key: imageKey,
            width: 150, // Increase width
            height: 150, // Increase height
          ),
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 40,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
