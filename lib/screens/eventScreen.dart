import 'package:flutter/material.dart';
import 'package:wegard/services/api_data.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});




  @override
  State<EventScreen> createState() => _EventScreenState();
}


class _EventScreenState extends State<EventScreen> {

@override
void initState()
{
super.initState();
// fetchWeatherApi("52.52");
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            fetchWeatherApi();
          },
          child: Text("Event Screen")),
      ),
    );
  }
}
