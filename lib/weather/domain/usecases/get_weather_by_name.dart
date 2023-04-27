

import '../entities/weather.dart';
import '../repository/weather_repo.dart';

class GetWeatherByName {
  final BaseWeatherRepo repo;

  GetWeatherByName(this.repo);
  Future<Weather> execute(String cityName)async {
    return await repo.getWeatherByCityName(cityName);
  }
}
