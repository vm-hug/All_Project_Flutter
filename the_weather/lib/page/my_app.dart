import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_weather/app/config/theme_custom.dart';
import 'package:the_weather/page/bottom_navigate_custom/bottom_custom.dart';
import 'package:the_weather/page/home/home_page.dart';
import 'package:the_weather/providers/weather_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WeatherProvider(),
      child: MaterialApp(
        theme: ThemeCustom.themeLight,
        debugShowCheckedModeBanner: false,
        home: BottomNavigationCustom(),
      ),
    );
  }
}
