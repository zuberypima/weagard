import 'package:flutter/material.dart';

class ScreenDataDetails{
  Widget details_Container(context) {
  return SizedBox(
      height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width, 
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "June 2" + " " + "18:30",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        Row(
          children: [
            Row(
              children: [Text("Day 31 "), Icon(Icons.arrow_upward_rounded)],
            ),
            Row(
              children: [Text("Night 31 "), Icon(Icons.arrow_downward_rounded)],
            )
          ],
        ),
        Row(
          children: [
            Text(
              "27",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 130),
            ),
            Text(
              "C",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 50),
            )
          ],
        )
      ],
    ),
  );
}



}