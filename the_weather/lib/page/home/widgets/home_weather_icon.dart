import 'package:flutter/material.dart';
import 'package:the_weather/app/utils/const.dart' show AssetCustom;

class HomeWeatherIcon extends StatelessWidget {
  HomeWeatherIcon({super.key, required this.nameIcon});

  String nameIcon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width / 1.5,
      padding: EdgeInsets.all(20.0),
      child: Image.asset(AssetCustom.getLinkImg(nameIcon), fit: BoxFit.cover),
    );
  }
}
