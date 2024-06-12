import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice game"),
      ),
      body: const Center(
        child: Text(
          "Dice game",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
