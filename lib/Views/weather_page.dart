import 'package:flutter/cupertino.dart';
import 'package:weather_app_flutter1/Widgets/weather_displayed.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: Color.fromARGB(255, 157, 206, 241),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Color.fromARGB(255, 157, 206, 241),
        previousPageTitle: "Set input",
        border: null,
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: WeatherDisplayed(),
      ),
    );
  }
}
