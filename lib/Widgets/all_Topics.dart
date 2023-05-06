import 'package:curso_task/Constants/lists.dart';
import 'package:flutter/material.dart';

class AllTopics extends StatefulWidget {
  const AllTopics({Key? key}) : super(key: key);

  @override
  State<AllTopics> createState() => _AllTopicsState();
}

class _AllTopicsState extends State<AllTopics> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
        children:[ ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (sContext, index) {
            return ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.grey.shade300),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Image.asset(allTopics[index]['icon']),
              ),
              title: Text(
                allTopics[index]['title'],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).textScaleFactor * 14.4),
              ),
              subtitle: Text(
                allTopics[index]['subtitle'],
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: MediaQuery.of(context).textScaleFactor * 12),
              ),
              trailing: IconButton(onPressed: () { }, icon:Icon(Icons.keyboard_arrow_right),),
            );
          },
          itemCount: allTopics.length,
          padding: EdgeInsets.all(10),
        ),
      ],),
    );
  }
}
