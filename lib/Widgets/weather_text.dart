import 'package:flutter/cupertino.dart';

class WeatherText extends StatelessWidget {
  final String infoText;
  final Color? textColor;
  const WeatherText(
      {super.key,
      required this.infoText,
      this.textColor = CupertinoColors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      infoText,
      style: TextStyle(
        color: textColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
