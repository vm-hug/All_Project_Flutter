import 'dart:convert';

class Weather {
  int id;
  String main;
  String description;

  Weather({required this.id, required this.main, required this.description});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'main': main,
      'description': description,
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      id: map['id'] as int,
      main: map['main'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Weather.fromJson(String source) =>
      Weather.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Main {
  final num temp;
  final num feels_like;
  final num temp_min;
  final num temp_max;
  final num humidity;
  Main({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.humidity,
  });

  Map<String, dynamic> toMap() {
    return {
      'temp': temp,
      'feels_like': feels_like,
      'temp_min': temp_min,
      'temp_max': temp_max,
      'humidity': humidity,
    };
  }

  factory Main.fromMap(Map<String, dynamic> map) {
    return Main(
      temp: map['temp'] ?? 0,
      feels_like: map['feels_like'] ?? 0,
      temp_min: map['temp_min'] ?? 0,
      temp_max: map['temp_max'] ?? 0,
      humidity: map['humidity'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Main.fromJson(String source) => Main.fromMap(json.decode(source));
}

class Wind {
  final num speed;
  final num deg;
  Wind({required this.speed, required this.deg});

  Map<String, dynamic> toMap() {
    return {'speed': speed, 'deg': deg};
  }

  factory Wind.fromMap(Map<String, dynamic> map) {
    return Wind(speed: map['speed'] ?? 0, deg: map['deg'] ?? 0);
  }

  String toJson() => json.encode(toMap());

  factory Wind.fromJson(String source) => Wind.fromMap(json.decode(source));
}

class WeatherData {
  int id;
  List<Weather> weather;
  String base;
  Main main;
  int visibility;
  Wind wind;
  String name;
  int cod;
  WeatherData({
    required this.id,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.name,
    required this.cod,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'weather': weather.map((x) => x.toMap()).toList(),
      'base': base,
      'main': main.toMap(),
      'visibility': visibility,
      'wind': wind.toMap(),
      'name': name,
      'cod': cod,
    };
  }

  factory WeatherData.fromMap(Map<String, dynamic> map) {
    return WeatherData(
      id: map['id']?.toInt() ?? 0,
      weather: List<Weather>.from(
        map['weather']?.map((x) => Weather.fromMap(x)),
      ),
      base: map['base'] ?? '',
      main: Main.fromMap(map['main']),
      visibility: map['visibility']?.toInt() ?? 0,
      wind: Wind.fromMap(map['wind']),
      name: map['name'] ?? '',
      cod: map['cod']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherData.fromJson(String source) =>
      WeatherData.fromMap(json.decode(source));
}

class WeatherDetail {
  Main main;
  Weather weather;
  String dt_txt;
  WeatherDetail({
    required this.main,
    required this.weather,
    required this.dt_txt,
  });

  Map<String, dynamic> toMap() {
    return {'main': main.toMap(), 'weather': weather.toMap(), 'dt_txt': dt_txt};
  }

  factory WeatherDetail.fromMap(Map<String, dynamic> map) {
    return WeatherDetail(
      main: Main.fromMap(map['main']),
      weather: Weather.fromMap(map['weather'][0]),
      dt_txt: map['dt_txt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory WeatherDetail.fromJson(String source) =>
      WeatherDetail.fromMap(json.decode(source));
}
