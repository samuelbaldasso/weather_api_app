import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Hourly {
  final List<String> time;
  final List<double> temperature;

  Hourly({
    required this.time,
    required this.temperature,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'time': time,
      'temperature_2m': temperature,
    };
  }

  factory Hourly.fromMap(Map<String, dynamic> map) {
    return Hourly(
      time: List<String>.from(map['time']),
      temperature: List<double>.from(
        (map['temperature_2m']),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Hourly.fromJson(String source) =>
      Hourly.fromMap(json.decode(source) as Map<String, dynamic>);
}
