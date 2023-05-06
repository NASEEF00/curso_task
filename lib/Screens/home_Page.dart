import 'package:curso_task/Screens/Topic_Page.dart';
import 'package:curso_task/Screens/explore_Page.dart';
import 'package:curso_task/Screens/sub_Topic_Page.dart';
import 'package:curso_task/Widgets/all_Courses.dart';
import 'package:curso_task/Widgets/all_Topics.dart';
import 'package:curso_task/Widgets/listView_video.dart';
import 'package:curso_task/Widgets/topics_Gridview_Widget.dart';
import 'package:curso_task/Widgets/video_List_view.dart';
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
    ExplorePage(),
   TopicPage(),
    SubTopic(),
    listbiew(),

    // const Icon(Icons.search, size:200),
    // const Icon(Icons.computer, size:200),
    // const Icon(Icons.download, size:200),

  ];
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(child: pages.elementAt(selectedindex),),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Explore',),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'My Course'),
          BottomNavigationBarItem(icon: Icon(Icons.screenshot_monitor_sharp),label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.download),label: 'Profile'),
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
