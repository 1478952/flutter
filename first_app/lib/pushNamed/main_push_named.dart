import 'package:first_app/pushNamed/ScreenA.dart';
import 'package:first_app/pushNamed/ScreenB.dart';
import 'package:first_app/pushNamed/ScreenC.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const ScreenA(),
        '/b': (context) => const ScreenB(),
        "/c": (context) => const ScreenC(),
      },
    );
  }
}
