// import 'package:http/http.dart' as http;
// import 'dart:convert';

// Future<void> fetchWeatherApi() async {

//     final params = {
//     "latitude": 52.52,
//     "longitude": 13.41,
//     "current": "temperature_2m",
//   };
//   final url = Uri.https('https://api.open-meteo.com', 'v1/forecast', params);
//       // "https://api.open-meteo.com/v1/forecast?latitude=${latitude}&longitude=13.41&current=temperature_2m");

//   try {
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       final decodedData = json.decode(response.body);
//       // Process the weather data here
//       print(decodedData);
//       // ...
//     } else {
//       print("Error fetching weather data: ${response.statusCode}");
//     }
//   } catch (e) {
//     print("Exception occurred: $e");
//   }
// }
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchWeatherApi() async {
  final params = {
    "latitude": "52.52",
    "longitude": "13.41",
    // "current": "temperature_2m",
    "current": [
      "temperature_2m",
      "relative_humidity_2m",
      "apparent_temperature",
      "is_day",
      "precipitation",
      "rain",
      "showers",
      "snowfall",
      "weather_code",
      "cloud_cover",
      "pressure_msl",
      "surface_pressure",
      "wind_speed_10m",
      "wind_direction_10m",
      "wind_gusts_10m"
    ],
    "daily": ["temperature_2m_max", "temperature_2m_min", "sunrise", "sunset"]
    // "hourly": "temperature_2m"
  };
  final url = Uri.https('api.open-meteo.com', '/v1/forecast', params);

  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body);
      // Process the weather data here
      print(decodedData);
      // ...
    } else {
      print("Error fetching weather data: ${response.statusCode}");
    }
  } catch (e) {
    print("Exception occurred: $e");
  }
}
