// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:macae_weather/models/hour_units.dart';
import 'package:macae_weather/models/hourly.dart';

class Weather {
  final double latitude;
  final double longitude;
  final String timeZone;
  final HourUnits hourUnits;
  final Hourly hourly;
  final double elevation;

  Weather({
    required this.elevation,
    required this.latitude,
    required this.longitude,
    required this.timeZone,
    required this.hourUnits,
    required this.hourly,
  });

  Map<String, dynamic> toMap() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'timezone': timeZone,
      'elevation': elevation,
      'hourly_units': hourUnits.toMap(),
      'hourly': hourly.toMap(),
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      elevation: map['elevation'] as double,
      latitude: map['latitude'] as double,
      longitude: map['longitude'] as double,
      timeZone: map['timezone'] as String,
      hourUnits: HourUnits.fromMap(map['hourly_units'] as Map<String, dynamic>),
      hourly: Hourly.fromMap(map['hourly'] as Map<String, dynamic>),
    );
  }

  factory Weather.fromJson(String json) => jsonDecode(json);

  String toJson() => jsonEncode(toMap());
}
