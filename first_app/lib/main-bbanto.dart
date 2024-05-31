import "package:flutter/material.dart"; // 프로젝트 시작시 무조건적으로 import해주어야 하는 라이브러리

void main() => runApp(const MyApp()); // 최상위 함수

// 스크린레이아웃을 최초로 빌드하는 역할 어떤 변화나 움직임이 없어야한다.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Charactor card",
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      // 교육학에선 무언가를 혼자 해낼 수 있도록 발판을 만들어주다.
      appBar: AppBar(
        title: const Text("BBANTO"),
        centerTitle: true, // 가운데 정렬
        backgroundColor: Colors.amber[700],
        elevation: 0, // appBar의 그림자를 제거해줌
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/giphy.gif"),
                radius: 60,
              ),
            ),
            Divider(
              height: 60,
              color: Color.fromARGB(255, 59, 59, 59),
              thickness: 0.5,
              endIndent: 30,
            ),
            Text(
              "NAME",
              style: TextStyle(color: Colors.white, letterSpacing: 2),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "BBANTO",
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "BBANTO POWER LEVEL",
              style: TextStyle(color: Colors.white, letterSpacing: 2),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "14",
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "using lightsaber",
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "face hero tattoo",
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "fire flames",
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                )
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/dog.jpg"),
                radius: 40,
                backgroundColor: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
