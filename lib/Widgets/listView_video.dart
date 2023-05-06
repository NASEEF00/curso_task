import 'package:curso_task/Widgets/video_List_view.dart';
import 'package:flutter/cupertino.dart';

class listbiew extends StatelessWidget {
  const listbiew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.7,
          child: Video_List_View(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.7,
          child: Video_List_View(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.7,
          child: Video_List_View(),
        ),
      ],
    );
  }
}
