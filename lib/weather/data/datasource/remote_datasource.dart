import 'package:flutter_weather_application/core/utils/constances.dart';
import 'package:flutter_weather_application/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel> getWeatherByName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  final dio = Dio();
  @override
  Future<WeatherModel> getWeatherByName(String cityName) async {
    final response = await dio.get(
        '${AppContance.baseUrl}/weather?q=$cityName&appid=${AppContance.apiKey}');
    return WeatherModel.fromJson(response.data);
  }
}
