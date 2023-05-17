import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_application/weather/data/datasource/remote_datasource.dart';
import 'package:flutter_weather_application/weather/data/repository/weather_repo.dart';
import 'package:flutter_weather_application/weather/domain/entities/weather.dart';
import 'package:flutter_weather_application/weather/domain/repository/weather_repo.dart';
import 'package:flutter_weather_application/weather/domain/usecases/get_weather_by_name.dart';
import 'package:flutter_weather_application/weather/presentation/controller/cubit/weather_states.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit() : super(InitialState());
  static WeatherCubit get(context) => BlocProvider.of(context);
  Weather? weather;

  BaseRemoteDataSource baseRemoteDataSource = RemoteDataSource();
  getWeather({required String cityNa}) async {
    emit(LoadingState());
    try {
      BaseWeatherRepo baseWeatherRepo = WeatherRepo(baseRemoteDataSource);
      weather = await GetWeatherByName(baseWeatherRepo).execute(cityNa);

      emit(SSearchState());
    } on Exception catch (e) {
      emit(ESearchState(e.toString()));
    }
  }
}
