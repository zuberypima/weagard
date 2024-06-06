import 'package:flutter/material.dart';
import 'package:wegard/services/temperatureModel.dart';
import 'package:wegard/services/model.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  // late Future<Temperature> weatherData;

  @override
  // void initState() {
  //   super.initState();
  //   weatherData = fetchWeatherApi();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          fetchWeatherApi();
        }, child: Text("Press Me Here")),
      ),
      // body: Center(
      //   child: FutureBuilder<Temperature>(
      //     future:weatherData,
      //     builder: (context, snapshot) {
      //       if (snapshot.hasData) {
      //         int? rainData =snapshot.data!.current!.rain;
      //         print(snapshot.data!.current!.rain);
      //         return Text(rainData.toString());
      //       } else if (snapshot.hasError) {
      //         return Text('${snapshot.error}');
      //       }
      //       // By default, show a loading spinner.
      //       return const CircularProgressIndicator();
      //     },
      //   ),
      // ),
    );
  }
}
