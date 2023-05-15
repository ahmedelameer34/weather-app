import '../../domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
      super.id,
      super.cityName,
      super.main,
      super.description,
      super.pressure,
      super.maxTemp,
      super.minTemp,
      super.currentTemp,
      super.windSpeed);

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
        json['id'],
        json['name'],
        json['weather'][0]['main'],
        json['weather'][0]['description'],
        json['main']['pressure'],
        json['main']["temp_max"],
        json['main']["temp_min"],
        json['main']["temp"],
        json['wind']['speed']);
  }
}
