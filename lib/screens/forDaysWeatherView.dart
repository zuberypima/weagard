import 'package:flutter/material.dart';

class DueToDaysWeatherView extends StatefulWidget {
  const DueToDaysWeatherView({super.key});

  @override
  State<DueToDaysWeatherView> createState() => _DueToDaysWeatherViewState();
}

class _DueToDaysWeatherViewState extends State<DueToDaysWeatherView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Center(child: Text("Due to days"),),

    );
  }
}