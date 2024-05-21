import 'package:flutter/cupertino.dart';
import '../Util/weather_provider.dart';
import '../Widgets/weather_text.dart';

class MinMax extends StatelessWidget {
  const MinMax({
    super.key,
    required this.weather,
  });

  final Weather weather;

  String capitalizeFirstLetterOfEachWord(String text) {
    return text
        .split(' ')
        .map((word) => word[0].toUpperCase() + word.substring(1))
        .join(' ');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: WeatherText(
            infoText: capitalizeFirstLetterOfEachWord(weather.description),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const WeatherText(
                      infoText: "Min", textColor: CupertinoColors.systemBlue),
                  WeatherText(infoText: "${weather.min} °C")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const WeatherText(
                      infoText: "Max", textColor: CupertinoColors.systemBlue),
                  WeatherText(infoText: "${weather.max} °C")
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
