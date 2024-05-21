import 'package:flutter/cupertino.dart';
import 'package:weather_app_flutter1/Widgets/input_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              ' Set input',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const Center(
              child: Icon(
                CupertinoIcons.sun_max_fill,
                size: 250,
                color: CupertinoColors.systemYellow,
              ),
            ),
            InputWidget(),
          ],
        ),
      ),
    );
  }
}
