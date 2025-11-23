import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppContance {
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5';
  static String get apiKey => dotenv.env["WEATHER_API_KEY"] ?? '';
  static String iconUrl(String iconCode) {
    return 'https://openweathermap.org/img/wn/$iconCode@2x.png';
  }
}
