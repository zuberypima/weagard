import 'package:flutter/material.dart';

class TomorrowWeatherView extends StatefulWidget {
  const TomorrowWeatherView({super.key});

  @override
  State<TomorrowWeatherView> createState() => _TomorrowWeatherViewState();
}

class _TomorrowWeatherViewState extends State<TomorrowWeatherView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Tomorrow"),),
    );
  }
}