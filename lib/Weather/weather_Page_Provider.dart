import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'constants.dart' as k;
import 'package:geolocator/geolocator.dart';
import 'dart:convert';

class Weather_Page_Provider extends ChangeNotifier{


  bool isLoaded = false;
  num temp = 20;
  num press  = 1000 ;
  num hum = 50;
  num cover = 50;
  String cityname = '';




  getCurrentCityWeather(Position position) async {
    var client = http.Client();
    var uri =
        '${k.domain}lat=${position.latitude}&lon=${position.longitude}&appid=${k.apiKey}';
    var url = Uri.parse(uri);
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var data = response.body;
      var decodeData = json.decode(data);
      print(data);
      updateUI(decodeData);

        isLoaded = true;
      notifyListeners();

    } else {
      print(response.statusCode);
    }
  }


  getCurrentLocation() async {
    var p = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
      forceAndroidLocationManager: true,
    );
    if (p != null) {
      print('Lat:${p?.latitude}, Long:${p?.longitude}');
      getCurrentCityWeather(p);
    } else {
      print('Data unavailable');
    }
  }


  updateUI(var decodedData) {

      if (decodedData == null) {
        temp = 0;
        press = 0;
        hum = 0;
        cover = 0;
        cityname = 'Not available';
      } else {
        temp = decodedData['main']['temp'];
        press = decodedData['main']['pressure'];
        hum = decodedData['main']['humidity'];
        cover = decodedData['clouds']['all'];
        cityname = decodedData['name'];
      }
      notifyListeners();

  }


}