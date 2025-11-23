import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_application/weather/presentation/controller/cubit/weather_cubit.dart';
import 'package:flutter_weather_application/weather/presentation/controller/cubit/weather_states.dart';
import 'package:flutter_weather_application/weather/presentation/screens/result.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    TextEditingController searchController = TextEditingController();
    return BlocConsumer<WeatherCubit, WeatherStates>(
      builder: (BuildContext context, state) {
        var cubit = WeatherCubit.get(context);

        return Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                   Colors.blueAccent,Colors.red
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    const Text(
                      'Know your city weather',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 61, 59, 58),
                          fontSize: 25),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a city name';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Enter a city name',
                          hintStyle: TextStyle(
                              color: Color.fromARGB(223, 209, 241, 217),
                              fontSize: 18)),
                      controller: searchController,
                      onFieldSubmitted: (value) async {
                        await cubit.getWeather(cityNa: value);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () async {
                            await cubit.getWeather(
                                cityNa: searchController.text);
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                const Color.fromARGB(255, 175, 120, 201)),
                            padding: WidgetStateProperty.all(
                                const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10)),
                            shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27))),
                          ),
                          child: const Text(
                            'Search',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 78, 76, 76)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
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
        } else if (state is ESearchState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.red,
              content: Text('invalid city name , enter a correct city name')));
        }
      },
    );
  }
}
