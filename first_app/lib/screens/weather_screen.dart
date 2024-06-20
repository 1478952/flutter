import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

class WeatherScreen extends StatefulWidget {
  final dynamic parseWeatherData;

  const WeatherScreen({super.key, this.parseWeatherData});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  late String cityName;
  late int temp;
  var date = DateTime.now();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateData(widget.parseWeatherData);
  }

  void updateData(dynamic weatherData) {
    double temp2 = weatherData["main"]["temp"];
    temp = temp2.toInt();
    cityName = weatherData["name"];

    print("temp $temp");
    print("cityName $cityName");
  }

  String getSystemTime() {
    var now = DateTime.now();

    return DateFormat("h:mm a").format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // body를 전체적으로 확장함
      appBar: AppBar(
        elevation: 0,
        title: const Text(""),
        leading: IconButton(
          icon: const Icon(Icons.near_me),
          onPressed: () {},
          iconSize: 30,
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.location_searching),
            iconSize: 30,
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              "assets/image/background.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 150,
                            ),
                            Text(
                              "Seoul",
                              style: GoogleFonts.lato(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              children: [
                                TimerBuilder.periodic(
                                    const Duration(minutes: 1),
                                    builder: (context) {
                                  return Text(
                                    getSystemTime(),
                                    style: GoogleFonts.lato(
                                        fontSize: 16, color: Colors.white),
                                  );
                                }),
                                Text(
                                  DateFormat(" - EEEE, ").format(date),
                                  style: GoogleFonts.lato(
                                      fontSize: 16, color: Colors.white),
                                ),
                                Text(
                                  DateFormat("d MMM, yyy").format(date),
                                  style: GoogleFonts.lato(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "18\u2103",
                              style: GoogleFonts.lato(
                                  fontSize: 85,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset("assets/svg/climacon-sun.svg"),
                                Text(
                                  "clear sky",
                                  style: GoogleFonts.lato(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Divider(
                        height: 15,
                        thickness: 2,
                        color: Colors.white30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "AQI(대기질지수)",
                                style: GoogleFonts.lato(
                                    fontSize: 14, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                "assets/image/bad.png",
                                width: 37,
                                height: 35,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '"매우나쁨"',
                                style: GoogleFonts.lato(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "미세먼지",
                                style: GoogleFonts.lato(
                                    fontSize: 14, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "174.75",
                                style: GoogleFonts.lato(
                                    fontSize: 24, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "㎍/m3",
                                style: GoogleFonts.lato(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "초미세먼지",
                                style: GoogleFonts.lato(
                                    fontSize: 14, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "84.03",
                                style: GoogleFonts.lato(
                                    fontSize: 24, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "㎍/m3",
                                style: GoogleFonts.lato(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
