import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:macae_weather/home/home_page.dart';
import 'package:macae_weather/repositories/impl_weather_repository.dart';
import 'package:macae_weather/services/impl_weather_service.dart';
import 'package:macae_weather/services/weather_service.dart';
import 'package:macae_weather/weather/weather_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clima Macaé',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      routes: {
        "/": (context) => HomePage(
            weatherService:
                ImplWeatherService(weatherRepository: ImplWeatherRepository())),
        "/weather_data": (context) => WeatherPage(
            weatherService:
                ImplWeatherService(weatherRepository: ImplWeatherRepository())),
      },
    );
  }
}
