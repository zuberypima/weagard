import 'package:flutter/material.dart';
import 'package:wegard/services/api_data.dart';
import 'package:wegard/services/model.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  late Future<Temperature> weather;

  @override
  void initState() {
    super.initState();
     fetchWeatherApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<Temperature>(
          future:null,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.current!.temperature2M.toString());
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
