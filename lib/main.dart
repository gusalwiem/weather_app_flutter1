import 'package:flutter/cupertino.dart';
import 'Views/search_page.dart';
import 'Util/weather_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WeatherProvider state = WeatherProvider();

  runApp(ChangeNotifierProvider(
    create: (context) => state,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App Flutter 1',
      theme: CupertinoThemeData(),
      home: SearchPage(),
    );
  }
}
