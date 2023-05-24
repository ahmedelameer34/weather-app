class Weather {
  final int id;
  final String cityName;
  final String main;
  final String description;
  final int pressure;
  final double currentTemp;
  final double maxTemp;
  final double minTemp;
  final double windSpeed;
  final int humidity;
  final String icon;

  Weather(
      this.icon,
      this.id,
      this.cityName,
      this.main,
      this.description,
      this.pressure,
      this.maxTemp,
      this.minTemp,
      this.currentTemp,
      this.windSpeed,
      this.humidity);
}
