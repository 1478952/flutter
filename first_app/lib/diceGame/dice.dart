import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice game"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // 세로 중앙
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center, 가로 중앙
              children: [
                Expanded(
                  child: Image.asset("assets/dice$leftDice.png"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Image.asset("assets/dice$rightDice.png"),
                )
              ],
            ),
          ),
          const SizedBox(height: 60),
          ButtonTheme(
            minWidth: 100,
            height: 60,
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDice = Random().nextInt(6) + 1;
                  rightDice = Random().nextInt(6) + 1;
                });
                flutterToast(
                    "Left dice: [$leftDice], Right dice: [$rightDice]");
              },
              style: TextButton.styleFrom(backgroundColor: Colors.orangeAccent),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 50,
              ),
            ),
          )
        ],
      )),
    );
  }
}

void flutterToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: const Color.fromARGB(255, 72, 72, 72),
      toastLength: Toast.LENGTH_SHORT);
}
