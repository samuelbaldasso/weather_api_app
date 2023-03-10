// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:macae_weather/models/weather.dart';
import 'package:macae_weather/repositories/weather_repository.dart';

import './weather_service.dart';

class ImplWeatherService implements WeatherService {
  final WeatherRepository _weatherRepository;
  ImplWeatherService({
    required WeatherRepository weatherRepository,
  }) : _weatherRepository = weatherRepository;

  @override
  Future<Weather> findWeather(double latitude, double longitude) async =>
      _weatherRepository.findWeather(latitude, longitude);
}
