import 'package:flutter/cupertino.dart';
import '../Util/weather_api.dart';

class Weather {
  String city;
  String description;
  String icon;
  int temp;
  int min;
  int max;
  IconData image;
  Color colorImage;

  Weather({
    this.city = "City Loading...",
    this.description = "Loading...",
    this.icon = "01d",
    this.temp = 0,
    this.min = 0,
    this.max = 0,
    this.image = CupertinoIcons.sparkles,
    this.colorImage = CupertinoColors.systemYellow,
  });
}

class WeatherProvider extends ChangeNotifier {
  String lat = "";
  String lon = "";

  Weather _weatherInfo = Weather();
  Weather get weatherInfo => _weatherInfo;

  void fetchWeather() async {
    Weather? weather = await WeatherApi.getWeather(lat, lon);
    //IMAGE
    switch (weather.icon) {
      case "01d":
        weather.image = CupertinoIcons.sun_max_fill;
      case "01n":
        weather.image = CupertinoIcons.moon_zzz_fill;
      case "02d":
        weather.image = CupertinoIcons.cloud_sun_fill;
      case "02n":
        weather.image = CupertinoIcons.cloud_moon_fill;
      case "03d":
        weather.image = CupertinoIcons.cloud_fill;
      case "03n":
        weather.image = CupertinoIcons.cloud_fill;
      case "04d":
        weather.image = CupertinoIcons.smoke_fill;
      case "04n":
        weather.image = CupertinoIcons.smoke_fill;
      case "09d":
        weather.image = CupertinoIcons.cloud_rain_fill;
      case "09n":
        weather.image = CupertinoIcons.cloud_rain_fill;
      case "10d":
        weather.image = CupertinoIcons.cloud_sun_rain_fill;
      case "10n":
        weather.image = CupertinoIcons.cloud_moon_rain_fill;
      case "11d":
        weather.image = CupertinoIcons.cloud_bolt_fill;
      case "11n":
        weather.image = CupertinoIcons.cloud_bolt_fill;
      case "13d":
        weather.image = CupertinoIcons.cloud_snow_fill;
      case "13n":
        weather.image = CupertinoIcons.cloud_snow_fill;
      case "50d":
        weather.image = CupertinoIcons.wind;
      case "50n":
        weather.image = CupertinoIcons.wind;
      default:
        weather.image = CupertinoIcons.sparkles;
    }
    //IMAGE COLOR
    switch (weather.icon) {
      case "01d":
        weather.colorImage = CupertinoColors.systemYellow;
      case "01n":
        weather.colorImage = CupertinoColors.systemGrey;
      default:
        weather.colorImage = CupertinoColors.white;
    }
    _weatherInfo = weather;
    notifyListeners();
  }
}
