import 'package:macae_weather/models/weather.dart';

abstract class WeatherService {
  Future<Weather> findWeather(double latitude, double longitude);
}
