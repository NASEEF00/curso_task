import 'package:curso_task/Screens/Topic_Page.dart';
import 'package:curso_task/Screens/home_Page.dart';
import 'package:curso_task/Screens/sub_Topic_Page.dart';
import 'package:curso_task/Theme/my_themes.dart';
import 'package:curso_task/Weather/weather_Page_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Weather_Page_Provider(),
      child:MyApp() ,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curso_Task ',
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,

      home: const HomePage(),
      routes: {
        'subTopics':(BuildContext ctx)=>SubTopic(),
        'topicPage':(BuildContext ctx)=>TopicPage(),
      },
    );
  }
}

