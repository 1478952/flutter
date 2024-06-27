import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigator",
      theme: ThemeData(primarySwatch: Colors.red),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First page"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to the second page"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const SecondPage();
            }));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second page"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to the first page"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
