class AppContance {
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5';
  static const String apiKey = '0efa470e638b1d897730b586852766b1';
  static String iconUrl(String iconCode) {
    return 'https://openweathermap.org/img/wn/$iconCode@2x.png';
  }
}
