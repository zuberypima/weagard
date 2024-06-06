// class Temperature {
//     Temperature({
//         required this.latitude,
//         required this.longitude,
//         required this.generationtimeMs,
//         required this.utcOffsetSeconds,
//         required this.timezone,
//         required this.timezoneAbbreviation,
//         required this.elevation,
//         required this.currentUnits,
//         required this.current,
//         required this.dailyUnits,
//         required this.daily,
//     });

//     final double? latitude;
//     final double? longitude;
//     final double? generationtimeMs;
//     final int? utcOffsetSeconds;
//     final String? timezone;
//     final String? timezoneAbbreviation;
//     final int? elevation;
//     final CurrentUnits? currentUnits;
//     final Current? current;
//     final DailyUnits? dailyUnits;
//     final Daily? daily;

//     factory Temperature.fromJson(Map<String, dynamic> json){ 
//         return Temperature(
//             latitude: json["latitude"],
//             longitude: json["longitude"],
//             generationtimeMs: json["generationtime_ms"],
//             utcOffsetSeconds: json["utc_offset_seconds"],
//             timezone: json["timezone"],
//             timezoneAbbreviation: json["timezone_abbreviation"],
//             elevation: json["elevation"],
//             currentUnits: json["current_units"] == null ? null : CurrentUnits.fromJson(json["current_units"]),
//             current: json["current"] == null ? null : Current.fromJson(json["current"]),
//             dailyUnits: json["daily_units"] == null ? null : DailyUnits.fromJson(json["daily_units"]),
//             daily: json["daily"] == null ? null : Daily.fromJson(json["daily"]),
//         );
//     }

// }

// class Current {
//     Current({
//         required this.time,
//         required this.interval,
//         required this.temperature2M,
//         required this.relativeHumidity2M,
//         required this.isDay,
//         required this.precipitation,
//         required this.rain,
//         required this.snowfall,
//         required this.surfacePressure,
//         required this.windSpeed10M,
//         required this.windDirection10M,
//         required this.windGusts10M,
//     });

//     final String? time;
//     final int? interval;
//     final double? temperature2M;
//     final int? relativeHumidity2M;
//     final int? isDay;
//     final int? precipitation;
//     final int? rain;
//     final int? snowfall;
//     final double? surfacePressure;
//     final double? windSpeed10M;
//     final int? windDirection10M;
//     final double? windGusts10M;

//     factory Current.fromJson(Map<String, dynamic> json){ 
//         return Current(
//             time: json["time"],
//             interval: json["interval"],
//             temperature2M: json["temperature_2m"],
//             relativeHumidity2M: json["relative_humidity_2m"],
//             isDay: json["is_day"],
//             precipitation: json["precipitation"],
//             rain: json["rain"],
//             snowfall: json["snowfall"],
//             surfacePressure: json["surface_pressure"],
//             windSpeed10M: json["wind_speed_10m"],
//             windDirection10M: json["wind_direction_10m"],
//             windGusts10M: json["wind_gusts_10m"],
//         );
//     }

// }

// class CurrentUnits {
//     CurrentUnits({
//         required this.time,
//         required this.interval,
//         required this.temperature2M,
//         required this.relativeHumidity2M,
//         required this.isDay,
//         required this.precipitation,
//         required this.rain,
//         required this.snowfall,
//         required this.surfacePressure,
//         required this.windSpeed10M,
//         required this.windDirection10M,
//         required this.windGusts10M,
//     });

//     final String? time;
//     final String? interval;
//     final String? temperature2M;
//     final String? relativeHumidity2M;
//     final String? isDay;
//     final String? precipitation;
//     final String? rain;
//     final String? snowfall;
//     final String? surfacePressure;
//     final String? windSpeed10M;
//     final String? windDirection10M;
//     final String? windGusts10M;

//     factory CurrentUnits.fromJson(Map<String, dynamic> json){ 
//         return CurrentUnits(
//             time: json["time"],
//             interval: json["interval"],
//             temperature2M: json["temperature_2m"],
//             relativeHumidity2M: json["relative_humidity_2m"],
//             isDay: json["is_day"],
//             precipitation: json["precipitation"],
//             rain: json["rain"],
//             snowfall: json["snowfall"],
//             surfacePressure: json["surface_pressure"],
//             windSpeed10M: json["wind_speed_10m"],
//             windDirection10M: json["wind_direction_10m"],
//             windGusts10M: json["wind_gusts_10m"],
//         );
//     }

// }

// class Daily {
//     Daily({
//         required this.time,
//         required this.temperature2MMax,
//         required this.temperature2MMin,
//         required this.sunrise,
//         required this.sunset,
//     });

//     final List<DateTime> time;
//     final List<double> temperature2MMax;
//     final List<double> temperature2MMin;
//     final List<String> sunrise;
//     final List<String> sunset;

//     factory Daily.fromJson(Map<String, dynamic> json){ 
//         return Daily(
//             time: json["time"] == null ? [] : List<DateTime>.from(json["time"]!.map((x) => DateTime.tryParse(x ?? ""))),
//             temperature2MMax: json["temperature_2m_max"] == null ? [] : List<double>.from(json["temperature_2m_max"]!.map((x) => x)),
//             temperature2MMin: json["temperature_2m_min"] == null ? [] : List<double>.from(json["temperature_2m_min"]!.map((x) => x)),
//             sunrise: json["sunrise"] == null ? [] : List<String>.from(json["sunrise"]!.map((x) => x)),
//             sunset: json["sunset"] == null ? [] : List<String>.from(json["sunset"]!.map((x) => x)),
//         );
//     }

// }

// class DailyUnits {
//     DailyUnits({
//         required this.time,
//         required this.temperature2MMax,
//         required this.temperature2MMin,
//         required this.sunrise,
//         required this.sunset,
//     });

//     final String? time;
//     final String? temperature2MMax;
//     final String? temperature2MMin;
//     final String? sunrise;
//     final String? sunset;

//     factory DailyUnits.fromJson(Map<String, dynamic> json){ 
//         return DailyUnits(
//             time: json["time"],
//             temperature2MMax: json["temperature_2m_max"],
//             temperature2MMin: json["temperature_2m_min"],
//             sunrise: json["sunrise"],
//             sunset: json["sunset"],
//         );
//     }

// }
