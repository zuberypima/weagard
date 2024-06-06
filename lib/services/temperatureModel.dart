import 'package:http/http.dart' as http;
import 'package:wegard/services/daylimodel.dart';
import 'dart:convert';

import 'package:wegard/services/model.dart';

Future<void> fetchWeatherApi() async {
  final params = {
    "latitude": "52.52",
    "longitude": "13.41",
    "current": [
      "temperature_2m",
      // "relative_humidity_2m",
      // "apparent_temperature",
      "is_day",
      "precipitation",
      "rain",
      // "showers",
      "snowfall",
      // "weather_code",
      "cloud_cover",
      "pressure_msl",
      "surface_pressure",
      "wind_speed_10m",
      "wind_direction_10m",
      "wind_gusts_10m"
    ],
    // "daily": ["temperature_2m_max", "temperature_2m_min", "sunrise", "sunset"]
  };
  final url = Uri.https('api.open-meteo.com', '/v1/forecast', params);

  try {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body);
      // final decodedData = Temperature.fromJson(jsonDecode(response.body));
      // final decodedData =Temperature(current: Current.fromJson());
      // print(decodedData.current!.precipitation.);
      // return decodedData;

      print(decodedData.toString());
    } else {
      print("Error fetching weather data: ${response.statusCode}");
      return Future.error(
          "Error fetching weather data: ${response.statusCode}");
    }
  } catch (e) {
    print("Exception occurred: $e");
    return Future.error("Exception occurred: $e");
  }
}
