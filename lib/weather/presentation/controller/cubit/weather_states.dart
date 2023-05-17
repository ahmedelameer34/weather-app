abstract class WeatherStates {}

class InitialState extends WeatherStates {}

class LoadingState extends WeatherStates {}

class SSearchState extends WeatherStates {}

class ESearchState extends WeatherStates {
  final String error;
  ESearchState(this.error);
}
