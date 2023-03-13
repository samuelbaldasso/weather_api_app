import 'package:flutter/material.dart';

class FormWeatherField extends StatelessWidget {
  const FormWeatherField(
      {Key? key,
      required this.label,
      required this.controller,
      required this.validator})
      : super(key: key);

  final String label;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.red,
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.blue),
          ),
        ),
        controller: controller,
        validator: validator,
      ),
    );
  }
}
