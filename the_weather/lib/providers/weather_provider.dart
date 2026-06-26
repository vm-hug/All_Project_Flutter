import 'package:flutter/material.dart';
import 'package:the_weather/model/weather.dart';
import 'package:the_weather/repositories/api_repository.dart';

class WeatherProvider extends ChangeNotifier {
  Future<WeatherData> getWeatherCurrent() async {
    WeatherData result = await ApiRepository.callApi();
    return result;
  }
}
