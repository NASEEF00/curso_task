
import 'package:curso_task/Screens/explore_Page.dart';
import 'package:curso_task/Weather/Widgets.dart';
import 'package:curso_task/Weather/weather_Page.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedindex = 0;
  void onItemTap(int index){
    setState((){
      selectedindex = index;
    });
  }
  List pages = [
    const ExplorePage(),
   const WeatherHome(),
    const Icon(Icons.bookmark, size:200),
    const Icon(Icons.person, size:200),

  ];
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(child: pages.elementAt(selectedindex),),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.explore,),label: 'Explore',),
          BottomNavigationBarItem(icon: Icon(Icons.sunny_snowing),label: 'Weather'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        ],
        selectedIconTheme:  const IconThemeData(
          color: Colors.indigo),
        selectedLabelStyle: TextStyle(color: Colors.grey),
        currentIndex: selectedindex,
        onTap: onItemTap ,

      ),


      );
  }
}
