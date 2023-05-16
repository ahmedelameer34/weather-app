import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/entities/weather.dart';

class ResultPage extends StatelessWidget {
  Weather weather;
  ResultPage({required this.weather});
  String status = 'assets/icons/clear sky.png';
  @override
  Widget build(BuildContext context) {
    //weather description
    var now = new DateTime.now();
    var formatter = new DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(now);
    String statusIcon() {
      switch (weather.description) {
        case 'clear sky':
          status = 'assets/icons/clear sky.png';
          break;
        case 'light snow':
          status = 'assets/icons/light snow.png';
          break;
        case 'broken clouds':
          status = 'assets/icons/broken clouds.png';
          break;
        case 'scattered clouds':
          status = 'assets/icons/scattered clouds.png';
          break;
        case 'overcast clouds':
          status = 'assets/icons/overcast clouds.png';
          break;
        case 'few clouds':
          status = 'assets/icons/scattered clouds.png';
          break;
        default:
          status = 'assets/icons/clear sky.png';
      }
      return status;
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.blueAccent],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Column(
              children: [
                Text(
                  weather.cityName,
                  style: TextStyle(
                      color: Color.fromARGB(255, 213, 235, 228), fontSize: 35),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      statusIcon(),
                    )),
                Text(
                  '${(weather.currentTemp - 272.15).toInt().toString()}' +
                      ' °C',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 253, 255), fontSize: 22),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  formattedDate,
                  style: TextStyle(
                      color: Color.fromARGB(255, 213, 235, 228), fontSize: 25),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Container(
                        height: 170,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          colors: [Colors.white, Colors.blueAccent],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        )),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'Temperature',
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Container(
                        height: 170,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          colors: [Colors.white, Colors.blueAccent],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        )),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'Status',
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 18),
                              )
                              //(weather.currentTemp - 272.15).toInt().toString()),
                            ],
                          ),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                    ))
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Container(
                        height: 170,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          colors: [Colors.white, Colors.blueAccent],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        )),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'Pressure',
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Container(
                        height: 170,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          colors: [Colors.white, Colors.blueAccent],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        )),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'Wind',
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                    ))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
