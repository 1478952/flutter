import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Future",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String result = "no data found";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Future test"),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      futureTest();
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Futrue test",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  result,
                  style: const TextStyle(fontSize: 20, color: Colors.redAccent),
                ),
                const Divider(
                  height: 20,
                  thickness: 2,
                ),
                FutureBuilder(
                    // ui상에 Future로 리턴된 값을 그려줄때
                    future: myFuture(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return Text(
                          snapshot.data!,
                          style:
                              const TextStyle(fontSize: 20, color: Colors.blue),
                        );
                      }
                      return const CircularProgressIndicator();
                    })
              ],
            ),
          ),
        ));
  }

  Future<void> futureTest() async {
    await Future.delayed(const Duration(seconds: 3)).then((value) {
      print("Here comes second");
      setState(() {
        result = "The data is fetched";
        print(result);
        print("Here comes third");
      });
    });
    print("Here comes first");
    print("Here is the last one");
  }

  Future<String> myFuture() async {
    await Future.delayed(const Duration(seconds: 2));
    return "another Future completed";
  }
}
