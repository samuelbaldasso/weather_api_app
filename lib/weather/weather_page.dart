import 'package:flutter/material.dart';
import 'package:macae_weather/repositories/impl_weather_repository.dart';
import 'package:macae_weather/services/impl_weather_service.dart';
import 'package:macae_weather/services/weather_service.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key, required WeatherService weatherService})
      : _weatherService = weatherService,
        super(key: key);
  final WeatherService _weatherService;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados do clima'),
        backgroundColor: Colors.lightBlue[900],
      ),
      body: Column(
        children: [
          // Text(),
        ],
      ),
    );
  }
}
