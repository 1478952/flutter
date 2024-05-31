import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Appbar",
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Snack Bar"),
          centerTitle: true,
        ),
        body: Builder(
          builder: (BuildContext ctx) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  const snackBar = SnackBar(content: Text("hello!"));
                  ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
                },
                style: ButtonStyle(
                  textStyle: WidgetStateProperty.all(
                      const TextStyle(fontSize: 15, color: Colors.white)),
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                ),
                child: const Text("ElvatedButton"),
              ),
            );
          },
        ));
  }
}
