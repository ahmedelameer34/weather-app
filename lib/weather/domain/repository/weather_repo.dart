

import '../entities/weather.dart';

abstract class BaseWeatherRepo {
 Future <Weather> getWeatherByCityName(String cityName);
}
