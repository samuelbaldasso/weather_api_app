import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:macae_weather/repositories/impl_weather_repository.dart';
import 'package:macae_weather/services/impl_weather_service.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final _weatherService =
      ImplWeatherService(weatherRepository: ImplWeatherRepository());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Column(
        children: [
          Image.asset(
            "assets/weather.png",
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "AppClima",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
