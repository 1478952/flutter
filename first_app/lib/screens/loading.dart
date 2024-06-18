import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart' as geolocator;
import 'package:http/http.dart' as http;

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  getLocation() async {
    try {
      await geolocator.Geolocator.requestPermission();
      geolocator.Position position =
          await geolocator.Geolocator.getCurrentPosition(
              desiredAccuracy: geolocator.LocationAccuracy.high);
      print("position $position");
      return position;
    } catch (e) {
      print("인터넷 연결에 문제가 생겼습니다.");
    }
  }

  void fetchData() async {
    Uri uri = Uri.parse(
        "https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50c122a1");

    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      String jsonData = response.body;

      var myJson = jsonDecode(jsonData);
      var description = myJson["weather"][0]["description"];
      var wind = myJson["wind"]["speed"];
      var id = myJson["id"];
      print("description $description");
      print("wind $wind");
      print("id $id");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getLocation();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              // getLocation();
            },
            child: const Text("Get my location")),
      ),
    );
  }
}
