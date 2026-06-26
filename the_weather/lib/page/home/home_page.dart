import 'package:flutter/material.dart';
import 'package:the_weather/page/home/widgets/home_detail_weather.dart';
import 'package:the_weather/page/home/widgets/home_loaction.dart';
import 'package:the_weather/page/home/widgets/home_temperater.dart';
import 'package:the_weather/page/home/widgets/home_weather_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff1D6CF3), Color(0xff19D2FE)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeWeatherIcon(),
            HomeTemperater(),
            HomeLocation(),
            SizedBox(height: 40),
            HomeDetailWeather(),
          ],
        ),
      ),
    );
  }
}
