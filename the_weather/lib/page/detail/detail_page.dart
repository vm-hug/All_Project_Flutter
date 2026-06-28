import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_weather/model/weather.dart';
import 'package:the_weather/page/detail/widget/detail_body.dart';
import 'package:the_weather/providers/weather_provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff1D6CF3), Color(0xff19D2FE)],
        ),
      ),
      child: FutureBuilder(
        future: context.read<WeatherProvider>().getWeatherDetail(),
        builder: (context, asyncSnapshot) {
          if (asyncSnapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!asyncSnapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          List<WeatherDetail> listData =
              asyncSnapshot.data as List<WeatherDetail>;

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: false,
              title: Row(
                children: [
                  Icon(CupertinoIcons.location),
                  SizedBox(width: 15),
                  AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      TyperAnimatedText(
                        "Ho Chi Minh City",
                        speed: Duration(milliseconds: 100),
                      ),
                    ],
                  ),
                ],
              ),
              actions: [Icon(CupertinoIcons.search), SizedBox(width: 15)],
            ),
            body: DetailBody(weatherDetail: listData),
          );
        },
      ),
    );
  }
}
