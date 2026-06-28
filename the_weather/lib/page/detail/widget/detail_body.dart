import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:the_weather/app/utils/const.dart';
import 'package:the_weather/model/weather.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, required this.weatherDetail});

  final List<WeatherDetail> weatherDetail;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(20.0),
      itemBuilder: (context, index) {
        DateTime dateTime = DateTime.parse(weatherDetail[index].dt_txt);
        String formatDay = DateFormat('EEEE').format(dateTime);
        String formatTime = DateFormat('HH:MM').format(dateTime);
        return Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        createTemp(weatherDetail[index].main.temp, size: 25),
                        SizedBox(width: 15),
                        Text(
                          weatherDetail[index].weather.main,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      formatDay,
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 19, 101, 139),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      formatTime,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 4,
                child: Image.asset(
                  AssetCustom.getLinkImg("Clouds"),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, _) => const SizedBox(height: 15),
      itemCount: 20,
    );
  }
}
