import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'constants.dart' as k;
import 'package:geolocator/geolocator.dart';
import 'dart:convert';

class Weather_Page_Provider extends ChangeNotifier{



  bool isLoaded = false;
  num temp =0 ;
  String cityname = '';
  String weathericon ='';
  String desc = '';



   getCurrentLocation() async {
    var p = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
      forceAndroidLocationManager: true,
    );
    if (p != null) {
      print('Lat:${p?.latitude}, Long:${p?.longitude}');
      getCurrentCityWeather(p);
      notifyListeners();
    } else {
      print('Data unavailable');
    }
  }


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
      notifyListeners();

        isLoaded = true;
      notifyListeners();


    } else {
      print(response.statusCode);
    }
  }


  updateUI(var decodedData) {

      if (decodedData == null) {
        temp =0 ;
        cityname ='';
        weathericon ='';
        desc='';

      } else {
        temp = decodedData['main']['temp']-273;
        cityname = decodedData['name'];
        weathericon = ("http://openweathermap.org/img/w/"+decodedData['weather'][0]['icon'] +".png") ;
        desc = decodedData['weather'][0]['description'];
      }


  }


}
