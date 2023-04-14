import 'package:flutter___app/weather/domain/entities/weather.dart';

abstract class WeatherRepo {
 Future <Weather> getWeatherByCityName(String cityName);
}
