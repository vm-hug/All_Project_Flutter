import 'package:dio/dio.dart';
import 'package:the_weather/app/utils/const.dart';
import 'package:the_weather/model/weather.dart';

class ApiRepository {
  static Future<WeatherData> callApi() async {
    try {
      final dio = Dio();
      final res = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=16,04243&lon=108,10494&units=metric&appid=${MyKey.api_token}',
      );
      final data = res.data;
      WeatherData result = WeatherData.fromMap(data);
      return result;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  static Future<List<WeatherDetail>> callApiDetail() async {
    try {
      final dio = Dio();
      final res = await dio.get(
        'https://api.openweathermap.org/data/2.5/forecast?lat=16,04243&lon=108,10494&units=metric&appid=${MyKey.api_token}',
      );
      List data = res.data['list'];
      List<WeatherDetail> result = List<WeatherDetail>.from(
        data.map((e) => WeatherDetail.fromMap(e)).toList(),
      );
      return result;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
