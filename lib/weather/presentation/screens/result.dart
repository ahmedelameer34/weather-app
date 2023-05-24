import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_application/core/utils/constances.dart';
import 'package:intl/intl.dart';

import '../../domain/entities/weather.dart';

class ResultPage extends StatelessWidget {
  Weather weather;
  ResultPage({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    //weather description
    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(now);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.red, Colors.blueAccent],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Column(
                  children: [
                    Text(
                      weather.cityName,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 213, 235, 228),
                          fontSize: 35),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        width: 60,
                        height: 60,
                        child: CachedNetworkImage(
                          imageUrl: AppContance.iconUrl(weather.icon),
                        )),
                    Text(
                      '${(weather.currentTemp - 272.15).toInt().toString()}'
                      ' °C',
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 253, 255),
                          fontSize: 22),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      formattedDate,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 213, 235, 228),
                          fontSize: 25),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Card(
                          elevation: 10,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            height: 170,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                              colors: [Colors.red, Colors.blueAccent],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            )),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  const Text(
                                    'Temperature',
                                    style: TextStyle(
                                        color: Colors.yellow, fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'max : ',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 253, 255),
                                                fontSize: 22),
                                          ),
                                          Text(
                                            '${(weather.maxTemp - 272.15).toInt().toString()}'
                                            ' °C',
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 253, 255),
                                                fontSize: 22),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'min : ',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 253, 255),
                                                fontSize: 22),
                                          ),
                                          Text(
                                            '${(weather.minTemp - 272.15).toInt().toString()}'
                                            ' °C',
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 253, 255),
                                                fontSize: 22),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Card(
                          elevation: 10,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            height: 170,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                              colors: [Colors.red, Colors.blueAccent],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            )),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    weather.main,
                                    style: const TextStyle(
                                        color: Colors.yellow, fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Center(
                                            child: Text(
                                              weather.description,
                                              overflow: TextOverflow.fade,
                                              maxLines: 1,
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 255, 253, 255),
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                          width: 60,
                                          height: 60,
                                          child: CachedNetworkImage(
                                            imageUrl: AppContance.iconUrl(
                                                weather.icon),
                                          )),
                                    ),
                                  ),
                                  //(weather.currentTemp - 272.15).toInt().toString()),
                                ],
                              ),
                            ),
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Card(
                          elevation: 10,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            height: 170,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                              colors: [Colors.red, Colors.blueAccent],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            )),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  const Text(
                                    'Pressure',
                                    style: TextStyle(
                                        color: Colors.yellow, fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${weather.pressure} mbar',
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 253, 255),
                                                fontSize: 22),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'humdity',
                                    style: TextStyle(
                                        color: Colors.yellow, fontSize: 18),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${weather.humidity}%',
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 253, 255),
                                                fontSize: 22),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Card(
                          elevation: 10,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Container(
                            height: 170,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                              colors: [Colors.red, Colors.blueAccent],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                            )),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  const Text(
                                    'Wind',
                                    style: TextStyle(
                                        color: Colors.yellow, fontSize: 18),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                          width: 50,
                                          height: 50,
                                          child: Image.asset(
                                            'assets/icons/wind.png',
                                          )),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${weather.windSpeed} Km/h',
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 253, 255),
                                                fontSize: 22),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ))
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
