import 'package:curso_task/Widgets/all_Courses.dart';
import 'package:curso_task/Widgets/all_Topics.dart';
import 'package:curso_task/Widgets/instructors_Listview.dart';
import 'package:curso_task/Widgets/text_Btn.dart';
import 'package:flutter/material.dart';

import '../Constants/lists.dart';

class TopicPage extends StatefulWidget {
  const TopicPage({Key? key}) : super(key: key);

  @override
  State<TopicPage> createState() => _TopicPageState();
}

class _TopicPageState extends State<TopicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Card(
                        elevation: 5,
                        child: Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset("assets/icons/dsn.png"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Design",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 35),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "290 courses",
                                style: TextStyle(color: Colors.grey.shade700),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Sub Topics",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  txtBtn("UX Design"),
                  txtBtn("Illustration"),
                  txtBtn("Blender")
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  txtBtn("Drawing"),
                  txtBtn("After Effects"),
                  txtBtn("User Research")
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  txtBtn("Branding & Identity"),
                  txtBtn("UI Design"),
                  txtBtn("3D")
                ],
              ),
              SizedBox(height: 25),
              Row(
                children: [
                  const Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Popular Instructors",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),
                  Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: TextButton(
                          child: const Text(
                            'See All',
                            style: TextStyle(color: Colors.indigo),
                          ),
                          onPressed: () {})),
                ],
              ),
              const SizedBox(height: 20),
              const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "All Courses",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),),
                AllCourses(),

            ],
          ),
        ),
      ),
    );
  }
}
