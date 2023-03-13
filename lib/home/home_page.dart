import 'dart:math';

import 'package:flutter/material.dart';
import 'package:macae_weather/models/weather.dart';
import 'package:macae_weather/repositories/impl_weather_repository.dart';
import 'package:macae_weather/services/weather_service.dart';
import 'package:macae_weather/widget/form_field.dart';

import '../services/impl_weather_service.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key,
    required WeatherService weatherService,
  })  : _weatherService = weatherService,
        super(key: key);
  final WeatherService _weatherService;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final latitudeEC = TextEditingController();
  final longitudeEC = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/weather.png",
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "AppClima",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 48,
                  color: Colors.lightBlue[900],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    FormWeatherField(
                      label: "Latitude",
                      controller: latitudeEC,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Latitude inválida";
                        }
                        return null;
                      },
                    ),
                    FormWeatherField(
                      label: "Longitude",
                      controller: longitudeEC,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Longitude inválida";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          final valid =
                              formKey.currentState?.validate() ?? false;
                          if (valid) {
                            Navigator.of(context).pushNamed("/weather_data");
                          }
                        },
                        child: const Text("Ver Clima")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
