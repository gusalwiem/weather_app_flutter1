import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_flutter1/Util/weather_provider.dart';
import 'package:weather_app_flutter1/Views/weather_page.dart';

class InputWidget extends StatelessWidget {
  InputWidget({super.key});

  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var wp = Provider.of<WeatherProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Latitude:"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CupertinoTextField(
            controller: _controller1,
            placeholder: "XX.XXXX",
            onChanged: (value) {
              wp.lat = value;
            },
          ),
        ),
        const Text("Longitude:"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CupertinoTextField(
            controller: _controller2,
            placeholder: "XX.XXXX",
            onChanged: (value) {
              wp.lon = value;
            },
          ),
        ),
        CupertinoButton(
          onPressed: () {
            wp.fetchWeather();
            Navigator.of(context).push<String>(
              CupertinoPageRoute(
                builder: (context) => const WeatherPage(),
              ),
            );
          },
          child: const Text("Update"),
        ),
      ],
    );
  }
}
