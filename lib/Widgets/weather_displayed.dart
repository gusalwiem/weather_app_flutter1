import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_flutter1/Util/weather_provider.dart';
import 'package:weather_app_flutter1/Widgets/min_max.dart';

class WeatherDisplayed extends StatelessWidget {
  const WeatherDisplayed({super.key});

  @override
  Widget build(BuildContext context) {
    Weather weather = context.watch<WeatherProvider>().weatherInfo;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const SizedBox(height: 50),
        Text(
          weather.city,
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
        Icon(
          weather.image,
          size: 250,
          color: weather.colorImage,
        ),
        Text(
          "${weather.temp}°C",
          style: const TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.w600,
          ),
        ),
        MinMax(weather: weather),
        const SizedBox(height: 20),
      ],
    );
  }
}
