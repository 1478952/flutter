import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ToastMessage",
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
        title: const Text("Toast Message"),
        centerTitle: true,
      ),
      body: Center(
          child: TextButton(
        onPressed: () {
          flutterToast();
        },
        style: TextButton.styleFrom(backgroundColor: Colors.red),
        child: const Text("Toast"),
      )),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
      msg: "hello",
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 20,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}
