import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  final String value;
  final int age;
  final String ocupation;
  
  const InfoScreen({
    required this.value,
    required this.age,
    required this.ocupation
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(value),
          Text(age.toString()),
          Text(ocupation)
        ],
      ),
    );
  }
}
