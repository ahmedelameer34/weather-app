import 'package:flutter_weather_application/weather/data/datasource/remote_datasource.dart';
import 'package:flutter_weather_application/weather/domain/entities/weather.dart';
import 'package:flutter_weather_application/weather/domain/repository/weather_repo.dart';

class WeatherRepo implements BaseWeatherRepo {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepo(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName) async {
    return await baseRemoteDataSource.getWeatherByName(cityName);
  }
}
