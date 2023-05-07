import 'package:curso_task/Weather/Widgets.dart';
import 'package:curso_task/Weather/weather_Page_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class WeatherHome extends StatelessWidget {
  const WeatherHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Weather_Page_Provider>(builder: (context, value, child) {

      value.getCurrentLocation();

      String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

      return Scaffold(
        body: Container(
          child: Visibility(
            visible: value.isLoaded,
            child:
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.69,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0)),
                        color: Colors.blue.shade400,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 35,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white60,
                                  size:
                                      MediaQuery.textScaleFactorOf(context) * 28,
                                ),
                              ),
                              Text(
                                value.cityname,
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontSize:
                                        MediaQuery.textScaleFactorOf(context) *
                                            20),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(
                                  Icons.keyboard_arrow_down_outlined,
                                  color: Colors.white60,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          Text(
                            '${value.temp.toInt()}°C',
                            style: const TextStyle(
                                fontSize: 80,
                                fontWeight: FontWeight.w600,
                                color: Colors.white54),
                          ),
                          Image(
                            height: MediaQuery.of(context).size.height * 0.15,
                            width: MediaQuery.of(context).size.width * 0.3,
                            image: NetworkImage(value.weathericon),
                            fit: BoxFit.cover,
                          ),
                          Text(
                            capitalize(value.desc),
                            style: const TextStyle(
                                fontSize: 20, color: Colors.white54),
                          ),
                          const SizedBox(height: 70),
                          Text(
                            DateFormat('EEEE').format(DateTime.now()),
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white54),
                          ),
                          Text(
                            DateFormat('dd/mm/yyyy').format(DateTime.now()),
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white54),
                          ),
                        ],
                      ),
                    ),
                    Row(children: [Padding(
                      padding: const EdgeInsets.only(left: 15,top: 20),
                      child: Text("7 Days",style: TextStyle(color: Colors.grey),),
                    ),],),
                    History_List(),

                  ],
                ),
              ),
            replacement:  Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      );
    });
  }
}
