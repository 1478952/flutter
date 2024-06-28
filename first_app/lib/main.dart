import 'package:firebase_core/firebase_core.dart';
import 'package:first_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // 플러그인 초기화시사용 해당 플러그인 초기화메서드가 비동기방식일때
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatting app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginSigupScreen(),
    );
  }
}
