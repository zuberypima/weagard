import 'package:flutter/material.dart';
import 'package:wegard/screens/forDaysWeatherView.dart';
import 'package:wegard/screens/todayWeatherView.dart';
import 'package:wegard/screens/tomorroWeatherView.dart';

class GeneralViewScreen extends StatefulWidget {
  const GeneralViewScreen({super.key});

  @override
  State<GeneralViewScreen> createState() => _GeneralViewScreenState();
}

class _GeneralViewScreenState extends State<GeneralViewScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 3, right: 3),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Locations",
                      hintStyle: TextStyle(color: Colors.black)),
                ),
              )),
          bottom: TabBar(
            indicatorColor: Colors.lightBlue,
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.white,
            labelColor: Colors.white,
            tabs: [
              Tab(
                child: Text("Today"),
              ),
              Tab(
                child: Text("Tomorrow"),
              ),
              Tab(
                child: Text("10 Days"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TodayWeatherView(),
            TomorrowWeatherView(),
            DueToDaysWeatherView()
          ],
        ),
      ),
    );
  }
}
