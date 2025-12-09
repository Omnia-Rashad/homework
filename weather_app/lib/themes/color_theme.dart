import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }

  condition = condition.toLowerCase(); // normalize
  condition = condition.toLowerCase(); // normalize
  // ☀️ Sunny / Clear
  if (condition.contains("sunny") || condition.contains("clear")) {
    return Colors.amber;

    // ☁️ Clouds
  } else if (condition.contains("cloud")) {
    return Colors.blueGrey;

    // 🌫 Mist / Fog
  } else if (condition.contains("mist") || condition.contains("fog")) {
    return Colors.blueGrey;

    // 🌦 Light Rain / Drizzle / Showers
  } else if (condition.contains("light drizzle") ||
      condition.contains("patchy light rain") ||
      condition.contains("patchy rain") ||
      condition.contains("drizzle") ||
      condition.contains("shower")) {
    return Colors.lightBlue;

    // 🌧 Moderate / Heavy Rain
  } else if (condition.contains("moderate rain") ||
      condition.contains("heavy rain") ||
      condition.contains("torrential")) {
    return Colors.blue;

    // 🌩 Thunder + Rain/Snow
  } else if (condition.contains("thunder")) {
    return Colors.deepPurple;

    // ❄ Snow / Blizzard / Ice Pellets / Sleet
  } else if (condition.contains("snow") ||
      condition.contains("blizzard") ||
      condition.contains("ice pellets") ||
      condition.contains("sleet") ||
      condition.contains("freezing")) {
    return Colors.cyan;

    // Default → neutral weather
  } else {
    return Colors.grey;
  }
}
