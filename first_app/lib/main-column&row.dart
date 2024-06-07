import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Column and Row",
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
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center, // center 정렬
            // mainAxisSize: MainAxisSize.min, // inline-block 느낌
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            verticalDirection: VerticalDirection.up, // 반대로 나열
            // crossAxisAlignment: CrossAxisAlignment.end, // 끝자리 정렬
            // crossAxisAlignment: CrossAxisAlignment.stretch, // 최대 크기
            children: [
              Container(
                // width: 100,
                height: 100,
                color: Colors.white,
                child: const Text("container 1"),
              ),
              const SizedBox(
                width: 30,
                height: 30,
              ),
              Container(
                // width: 200,
                height: 100,
                color: Colors.blue,
                child: const Text("container 2"),
              ),
              Container(
                // width: 100,
                height: 100,
                color: Colors.red,
                child: const Text("container 3"),
              ),
              Container(
                width: 20,
                height: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
