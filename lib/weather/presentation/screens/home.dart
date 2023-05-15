import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_application/weather/presentation/controller/cubit/weather_cubit.dart';
import 'package:flutter_weather_application/weather/presentation/controller/cubit/weather_states.dart';
import 'package:flutter_weather_application/weather/presentation/screens/result.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return BlocConsumer<WeatherCubit, WeatherStates>(
      builder: (BuildContext context, state) {
        var cubit = WeatherCubit.get(context);
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text('hi there'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text('Welcome '),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: searchController,
                    onSubmitted: (value) async {
                      await cubit.getWeather(cityNa: value);
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
      listener: (context, state) {
        var cubit = WeatherCubit.get(context);
        if (state is SSearchState) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultPage(weather: cubit.weather!)));
        }
      },
    );
  }
}
