import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyPage());
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyPageState();
  }
}

class MyPageState extends State<MyPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You have pushed the button this many times"),
            Text(
              "$counter",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    child: const Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        counter++;
                        print("$counter");
                      });
                    }),
                const SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                    child: const Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        counter--;
                        print("$counter");
                      });
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
