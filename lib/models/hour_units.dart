import 'dart:convert';

class HourUnits {
  final String time;
  final String temperatureMeasure;

  HourUnits({
    required this.time,
    required this.temperatureMeasure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': time,
      'temperature_2m': temperatureMeasure,
    };
  }

  factory HourUnits.fromMap(Map<String, dynamic> map) {
    return HourUnits(
      time: map['time'] as String,
      temperatureMeasure: map['temperature_2m'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory HourUnits.fromJson(String source) =>
      HourUnits.fromMap(json.decode(source) as Map<String, dynamic>);
}
