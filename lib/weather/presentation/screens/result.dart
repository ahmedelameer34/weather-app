import 'package:flutter/material.dart';

import '../../domain/entities/weather.dart';

class ResultPage extends StatelessWidget {
  Weather weather;
  ResultPage({required this.weather});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

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
                Text(
                  '${now.day.toString()}' +
                      '  ' +
                      ' ' +
                      '${now.hour.toString()}' +
                      ' :' +
                      '${now.minute}',
                  style: TextStyle(
                      color: Color.fromARGB(255, 213, 235, 228), fontSize: 35),
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
