import 'package:macae_weather/models/weather.dart';

abstract class WeatherRepository {
  Future<Weather> findWeather(double latitude, double longitude);
}
