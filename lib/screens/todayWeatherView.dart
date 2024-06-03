import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wegard/screens/widgets/cureentDetails.dart';
import 'package:wegard/screens/widgets/detailsContainer.dart';

class TodayWeatherView extends StatefulWidget {
  const TodayWeatherView({super.key});

  @override
  State<TodayWeatherView> createState() => _TodayWeatherViewState();
}

class _TodayWeatherViewState extends State<TodayWeatherView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width, 
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/drysky.jpg'),
            fit: BoxFit.fitHeight
            )
          ),
          child:ListView(
            children: [
              Stack(children: [
                ScreenDataDetails().details_Container(context)
                
              ],),
              Column(children: [
                current_details(context)
              ],)
            ],
          )),
    );
  }
}
