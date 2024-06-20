import 'package:first_app/data/my_location.dart';
import 'package:first_app/data/network.dart';
import 'package:first_app/screens/weather_screen.dart';
import 'package:flutter/material.dart';

const apiKey = "d0b34e67524f08be8232d719e14d9e59";

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  late double latitude3;
  late double longitude3;

  void getLocation() async {
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    latitude3 = myLocation.latitude2;
    longitude3 = myLocation.longitude2;
    print("latitude3 $latitude3");
    print("longitude3 $longitude3");

    Network network = Network(
        "https://api.openweathermap.org/data/2.5/weather?lat=$latitude3&lon=$longitude3&appid=$apiKey&units=metric");
    var weatherData = await network.getJsonData();
    print("weatherData $weatherData");
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WeatherScreen(
        parseWeatherData: weatherData,
      );
    }));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getLocation();
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
