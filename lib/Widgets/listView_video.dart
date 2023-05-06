import 'package:curso_task/Widgets/video_List_view.dart';
import 'package:flutter/cupertino.dart';

class listbiew extends StatefulWidget {
  const listbiew({Key? key}) : super(key: key);

  @override
  State<listbiew> createState() => _listbiewState();
}

class _listbiewState extends State<listbiew> {
  @override
  Widget build(BuildContext context) {
    return ListView(shrinkWrap: true,scrollDirection: Axis.horizontal,children: [
      Container(
        height: 300, width:300, child: Video_List_View(),),
      Container(
        height: 300, width:300, child: Video_List_View(),),
      Container(
        height: 300, width:300, child: Video_List_View(),),
    ],);
  }
}
