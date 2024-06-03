
import 'package:flutter/material.dart';

Widget current_details(context){
 return Container(
  height: MediaQuery.of(context).size.height/3,
  decoration: BoxDecoration(color: Colors.white),
  child: Column(children: [

    Text("Current Details"),
    Divider()
  ],),
 );
}