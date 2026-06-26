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
}
