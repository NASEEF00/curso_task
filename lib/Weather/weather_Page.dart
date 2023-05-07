import 'package:curso_task/Weather/weather_Page_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WeatherHome extends StatelessWidget {
  const WeatherHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Weather_Page_Provider>(builder: (context, value, child) {
      value.getCurrentLocation();

      return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              value.cityname,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
        ),
        body: Container(
          child: Visibility(
            visible: value.isLoaded,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${value.temp?.toInt()}°C',
                    style:
                        TextStyle(fontSize: 80, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Pressure: ${value.press?.toInt()} hPa',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Humidity: ${value.hum?.toInt()}%',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Cloud Cover: ${value.cover?.toInt()}%',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            replacement: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      );
    });
  }
}
