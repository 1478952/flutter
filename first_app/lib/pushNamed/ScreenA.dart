// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ScreenA"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/b");
              },
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("Go to ScreenB"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/c");
              },
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("Go to ScreenC"),
            ),
          ],
        ),
      ),
    );
  }
}
