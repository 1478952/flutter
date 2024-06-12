import 'package:first_app/dice.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log in"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          // input 클릭시 화면 잡아먹는걸 막아줌
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 50)), // 이미지 위치 조정
              const Center(
                child: Image(
                  image: AssetImage("assets/giphy.gif"),
                  width: 170,
                  height: 190,
                ),
              ),
              Form(
                  child: Theme(
                      data: ThemeData(
                          primaryColor: Colors.teal,
                          inputDecorationTheme: const InputDecorationTheme(
                              labelStyle:
                                  TextStyle(color: Colors.teal, fontSize: 15))),
                      child: Container(
                        padding: const EdgeInsets.all(40),
                        child: Column(
                          children: [
                            TextField(
                              decoration: // html의 label과 같음
                                  const InputDecoration(
                                      labelText: "Enter 'dice'"),
                              keyboardType: TextInputType.text, // 어떠한 입력을 받을건지?
                              controller: controller,
                            ),
                            TextField(
                              decoration: const InputDecoration(
                                  labelText: "Enter Password"),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              controller: controller2,
                            ),
                            const SizedBox(height: 40),
                            ButtonTheme(
                                minWidth: 100,
                                height: 50,
                                child: TextButton(
                                  onPressed: () {
                                    if (controller.text == "dice" &&
                                        controller2.text == "1234") {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const Dice()));
                                    } else if (controller.text == "dice" &&
                                        controller2.text != "1234") {
                                      showSnackBar3(context);
                                    } else if (controller.text != "dice" &&
                                        controller2.text == "1234") {
                                      showSnackBar2(context);
                                    } else {
                                      showSnackBar(context);
                                    }
                                  },
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.orangeAccent),
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                      )))
            ],
          ),
        );
      }),
    );
  }
}

void showSnackBar(BuildContext context) {
  const snackBar = SnackBar(
    content: Text(
      "로그인 정보를 다시 확인하세요",
      textAlign: TextAlign.center,
    ),
    backgroundColor: Colors.blue,
    duration: Duration(seconds: 2),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void showSnackBar2(BuildContext context) {
  const snackBar = SnackBar(
    content: Text(
      "dice의 철자를 확인하세요",
      textAlign: TextAlign.center,
    ),
    backgroundColor: Colors.blue,
    duration: Duration(seconds: 2),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void showSnackBar3(BuildContext context) {
  const snackBar = SnackBar(
    content: Text(
      "비밀번호가 일치하지 않습니다",
      textAlign: TextAlign.center,
    ),
    backgroundColor: Colors.blue,
    duration: Duration(seconds: 2),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
