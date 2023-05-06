import 'package:curso_task/Widgets/all_Courses.dart';
import 'package:curso_task/Widgets/video_List_view.dart';
import 'package:flutter/material.dart';

import '../Widgets/listView_video.dart';

class SubTopic extends StatefulWidget {
  const SubTopic({Key? key}) : super(key: key);

  @override
  State<SubTopic> createState() => _SubTopicState();
}

class _SubTopicState extends State<SubTopic> {
  String desc =
      "UI design is a crucial component of app and website development, as a well-"
      "designed interface can improve user engagement and retention. Good UI design "
      "takes into account both the user's needs ......";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFF02192F),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: IconButton(
                        onPressed: () {Navigator.pop(context);},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white54,
                        )),
                  ),
                  const SizedBox(height: 26),
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Text(
                      "UI Design",
                      style: TextStyle(fontSize: 22, color: Colors.white70),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 12, left: 12, bottom: 18),
                    child: Text(
                      desc,
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: MediaQuery.textScaleFactorOf(context) * 13),
                      maxLines: 8,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                "Where do you to get started",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            // Container(
            //     height: 300, width:300, child: Video_List_View(),),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.38,
                width: MediaQuery.of(context).size.width,
                child: const listbiew()),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                "ALL Courses",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
            const AllCourses(),
          ],
        ),
      ),
    );
  }
}
