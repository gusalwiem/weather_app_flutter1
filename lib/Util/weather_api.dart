import 'weather_provider.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const String BASE_URL = "https://api.openweathermap.org/data/2.5/weather";
const String apiKey = "53b6222b974d4277240d894c4b77f998";

class WeatherApi {
  static Future<Weather> getWeather(String lat, String lon) async {
    Uri url =
        Uri.parse('$BASE_URL?lat=$lat&lon=$lon&appid=$apiKey&units=metric');

    try {
      var response = await http.get(url);
      Map<String, dynamic> data = json.decode(response.body);
      if (response.statusCode == 200) {
        Weather weather = Weather(
          city: data["name"],
          description: data["weather"][0]["description"],
          icon: data["weather"][0]["icon"],
          temp: data["main"]["temp"].toInt(),
          min: data["main"]["temp_min"].toInt(),
          max: data["main"]["temp_max"].toInt(),
        );
        return weather;
      } else {
        throw Exception("Failed to load weathter data");
      }
    } catch (err) {
      throw err.toString();
    }
  }
}
