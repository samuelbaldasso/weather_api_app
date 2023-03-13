import 'package:dio/dio.dart';
import 'package:macae_weather/models/weather.dart';

import './weather_repository.dart';

class ImplWeatherRepository implements WeatherRepository {
  @override
  Future<Weather> findWeather(double latitude, double longitude) async {
    final result = await Dio().get(
        "https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&hourly=temperature_2m");

    return Weather.fromMap(result.data);
  }
}
