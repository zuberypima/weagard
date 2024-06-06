class Temperature {
    Temperature({
        required this.latitude,
        required this.longitude,
        required this.generationtimeMs,
        required this.utcOffsetSeconds,
        required this.timezone,
        required this.timezoneAbbreviation,
        required this.elevation,
        required this.currentUnits,
        required this.current,
        required this.hourlyUnits,
        required this.hourly,
    });

    final double? latitude;
    final double? longitude;
    final double? generationtimeMs;
    final int? utcOffsetSeconds;
    final String? timezone;
    final String? timezoneAbbreviation;
    final int? elevation;
    final CurrentUnits? currentUnits;
    final Current? current;
    final HourlyUnits? hourlyUnits;
    final Hourly? hourly;

    factory Temperature.fromJson(Map<String, dynamic> json){ 
        return Temperature(
            latitude: json["latitude"],
            longitude: json["longitude"],
            generationtimeMs: json["generationtime_ms"],
            utcOffsetSeconds: json["utc_offset_seconds"],
            timezone: json["timezone"],
            timezoneAbbreviation: json["timezone_abbreviation"],
            elevation: json["elevation"],
            currentUnits: json["current_units"] == null ? null : CurrentUnits.fromJson(json["current_units"]),
            current: json["current"] == null ? null : Current.fromJson(json["current"]),
            hourlyUnits: json["hourly_units"] == null ? null : HourlyUnits.fromJson(json["hourly_units"]),
            hourly: json["hourly"] == null ? null : Hourly.fromJson(json["hourly"]),
        );
    }

}

class Current {
    Current({
        required this.time,
        required this.interval,
        required this.temperature2M,
        required this.isDay,
        required this.precipitation,
        required this.rain,
        required this.snowfall,
        required this.weatherCode,
        required this.pressureMsl,
        required this.surfacePressure,
        required this.windSpeed10M,
        required this.windDirection10M,
        required this.windGusts10M,
    });

    final String? time;
    final int? interval;
    final double? temperature2M;
    final int? isDay;
    final int? precipitation;
    final int? rain;
    final int? snowfall;
    final int? weatherCode;
    final double? pressureMsl;
    final double? surfacePressure;
    final double? windSpeed10M;
    final int? windDirection10M;
    final int? windGusts10M;

    factory Current.fromJson(Map<String, dynamic> json){ 
        return Current(
            time: json["time"],
            interval: json["interval"],
            temperature2M: json["temperature_2m"],
            isDay: json["is_day"],
            precipitation: json["precipitation"],
            rain: json["rain"],
            snowfall: json["snowfall"],
            weatherCode: json["weather_code"],
            pressureMsl: json["pressure_msl"],
            surfacePressure: json["surface_pressure"],
            windSpeed10M: json["wind_speed_10m"],
            windDirection10M: json["wind_direction_10m"],
            windGusts10M: json["wind_gusts_10m"],
        );
    }

}

class CurrentUnits {
    CurrentUnits({
        required this.time,
        required this.interval,
        required this.temperature2M,
        required this.isDay,
        required this.precipitation,
        required this.rain,
        required this.snowfall,
        required this.weatherCode,
        required this.pressureMsl,
        required this.surfacePressure,
        required this.windSpeed10M,
        required this.windDirection10M,
        required this.windGusts10M,
    });

    final String? time;
    final String? interval;
    final String? temperature2M;
    final String? isDay;
    final String? precipitation;
    final String? rain;
    final String? snowfall;
    final String? weatherCode;
    final String? pressureMsl;
    final String? surfacePressure;
    final String? windSpeed10M;
    final String? windDirection10M;
    final String? windGusts10M;

    factory CurrentUnits.fromJson(Map<String, dynamic> json){ 
        return CurrentUnits(
            time: json["time"],
            interval: json["interval"],
            temperature2M: json["temperature_2m"],
            isDay: json["is_day"],
            precipitation: json["precipitation"],
            rain: json["rain"],
            snowfall: json["snowfall"],
            weatherCode: json["weather_code"],
            pressureMsl: json["pressure_msl"],
            surfacePressure: json["surface_pressure"],
            windSpeed10M: json["wind_speed_10m"],
            windDirection10M: json["wind_direction_10m"],
            windGusts10M: json["wind_gusts_10m"],
        );
    }

}

class Hourly {
    Hourly({
        required this.time,
        required this.temperature2M,
    });

    final List<String> time;
    final List<double> temperature2M;

    factory Hourly.fromJson(Map<String, dynamic> json){ 
        return Hourly(
            time: json["time"] == null ? [] : List<String>.from(json["time"]!.map((x) => x)),
            temperature2M: json["temperature_2m"] == null ? [] : List<double>.from(json["temperature_2m"]!.map((x) => x)),
        );
    }

}

class HourlyUnits {
    HourlyUnits({
        required this.time,
        required this.temperature2M,
    });

    final String? time;
    final String? temperature2M;

    factory HourlyUnits.fromJson(Map<String, dynamic> json){ 
        return HourlyUnits(
            time: json["time"],
            temperature2M: json["temperature_2m"],
        );
    }

}
