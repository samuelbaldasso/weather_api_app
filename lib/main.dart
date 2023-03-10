import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:macae_weather/home/home_page.dart';
import 'package:macae_weather/services/impl_weather_service.dart';
import 'package:macae_weather/services/weather_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clima Macaé',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: HomePage(),
    );
  }
}
