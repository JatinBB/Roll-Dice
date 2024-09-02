# Dice Roller App

## Overview

The Dice Roller App is a simple and interactive mobile application developed using Flutter. The app allows users to roll a virtual dice, which displays a random number between 1 and 6. The dice roll is accompanied by smooth animations and sound effects to enhance the user experience.

## Objective

The primary objective of this app is to demonstrate the use of Flutter for creating a basic yet engaging application. The app incorporates animation, sound, and random number generation, providing a practical example of combining different features in a Flutter project.

## Features

- **Animated Dice Roll**: The dice image rotates and changes with a smooth animation every time the user rolls the dice.
- **Sound Effects**: A dice roll sound plays whenever the user clicks the "Roll Dice" button.
- **Randomized Output**: The app generates a random number between 1 and 6, representing the outcome of the dice roll.
- **Responsive UI**: The app adapts well to different screen sizes and orientations.

## Technology Stack

- **Framework**: Flutter
- **Language**: Dart
- **Sound Management**: `audioplayers` package
- **Animation**: Flutter's `AnimatedSwitcher` and `RotationTransition`

## Architecture

The app follows a simple yet effective architecture:

- **DiceRolller Widget**: This stateful widget manages the dice roll logic, including the animation and sound effects.
- **UI Rendering**: The user interface is rendered using standard Flutter widgets like `Column`, `Image`, and `TextButton`.
- **State Management**: The app uses the `setState` method to trigger UI updates whenever the dice is rolled.
- **Audio Handling**: The `AudioPlayer` instance manages the playback of the dice roll sound.

## Prerequisites

**Flutter SDK:** Ensure you have the Flutter SDK installed on your machine. You can download it from the official Flutter website.

**Dart SDK:** Dart is bundled with the Flutter SDK, but if you're using Dart separately, ensure you have the Dart SDK installed. You can download it from the official Dart website.

**Development Environment:** Make sure your development environment is set up according to the Flutter installation guide for your operating system.

## Installation

To run this project locally, follow these steps:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/dice-roller-app.git
2. **Navigate to the Project Directory:**
   ```bash
   cd dice-roller-app
3. **Install Dependencies:**
   ```bash
   flutter pub get <dependencies_name>
4. **Run the App:**
   ```bash
   flutter run
