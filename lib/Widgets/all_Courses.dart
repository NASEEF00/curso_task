

import 'package:flutter/material.dart';

import '../Constants/lists.dart';

class AllCourses extends StatefulWidget {
  const AllCourses({Key? key}) : super(key: key);

  @override
  State<AllCourses> createState() => _AllCoursesState();
}

class _AllCoursesState extends State<AllCourses> {
  @override
  Widget build(BuildContext context) {
    return    SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Column(
          children:[ ListView.builder(scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.18,

                  child: Column(
                    children: [
                      Row(children: [
                        Row(
                          children: [
                            Container(
                              width:
                              MediaQuery.of(context).size.width *
                                  0.27,
                              height:
                              MediaQuery.of(context).size.height *
                                  0.12,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius:
                                BorderRadius.circular(5.0),
                              ),
                            ),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                pplrCours[index]['titlea'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: MediaQuery.of(context).textScaleFactor*14),
                              ),
                              Text(pplrCours[index]['titleb'],style: TextStyle(color: Colors.grey.shade500),),
                              Text(pplrCours[index]['titlec'],style: TextStyle(color: Colors.blueAccent.shade700,),),
                              RichText(
                                  text: TextSpan(
                                      text: pplrCours[index]
                                      ['titlec'],
                                      style: const TextStyle(
                                        decoration: TextDecoration
                                            .lineThrough,
                                        color: Colors.grey,
                                      ))),
                            ],
                          ),

                        ),
                      ],),
                      Divider(
                        thickness: 2,
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: pplrCours.length,
            padding: const EdgeInsets.all(10),
          ),
          ] ),
    );
  }
}
