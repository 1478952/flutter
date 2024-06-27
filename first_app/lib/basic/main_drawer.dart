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
        title: const Text("Appbar icon menu"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () => print("shopping_cart button is clicked"),
              icon: const Icon(Icons.shopping_cart)),
          IconButton(
              onPressed: () => print("search_cart button is clicked"),
              icon: const Icon(Icons.search))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage("assets/dog.jpg"),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/dog.jpg"),
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/dog.jpg"),
                  backgroundColor: Colors.white,
                ),
              ],
              accountName: const Text("KJW"),
              accountEmail: const Text("KJW@com"),
              onDetailsPressed: () => print("arrow is clicked"),
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: const Text("Home"),
              onTap: () => print("home is clicked"),
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: const Text("Setting"),
              onTap: () => print("setting is clicked"),
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: const Text("Q&A"),
              onTap: () => print("Q&A is clicked"),
              trailing: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
