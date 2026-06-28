import 'package:flutter/material.dart';
import 'package:the_weather/app/utils/const.dart' show createTemp;

class HomeTemperater extends StatelessWidget {
  const HomeTemperater({super.key, required this.temp});

  final num temp;

  @override
  Widget build(BuildContext context) {
    return createTemp(temp);
  }
}
