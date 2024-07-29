import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<int> numbers = [];

  void onPressed() {
    // ui를 변경해주는 state 관련 메소드
    setState(() {
      numbers.add(numbers.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Click Count"),
              for (int n in numbers) Text("$n"),
              IconButton(
                  onPressed: onPressed, icon: const Icon(Icons.add_box_rounded))
            ],
          ),
        ),
      ),
    );
  }
}
