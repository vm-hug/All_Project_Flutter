import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:the_weather/model/weather.dart';
import 'package:the_weather/repositories/api_repository.dart';

class WeatherProvider extends ChangeNotifier {
  Position? position;
  String nameCity = "Ho Chi Minh City";
  void updatePosition(Position positionCurrent) {
    position = positionCurrent;
    notifyListeners();
  }

  Future<WeatherData> getWeatherCurrent() async {
    WeatherData result = await ApiRepository.callApi(position);
    nameCity = result.name;
    notifyListeners();
    return result;
  }

  Future<List<WeatherDetail>> getWeatherDetail() async {
    List<WeatherDetail> result = await ApiRepository.callApiDetail(position);
    return result;
  }
}
