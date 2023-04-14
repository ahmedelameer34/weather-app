import 'package:flutter___app/weather/domain/repository/weather_repo.dart';

import '../entities/weather.dart';

class GetWeatherByName {
  final WeatherRepo repo;

  GetWeatherByName(this.repo);
  Future<Weather> execute(String cityName)async {
    return await repo.getWeatherByCityName(cityName);
  }
}
