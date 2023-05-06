import 'package:curso_task/Widgets/all_Topics.dart';
import 'package:flutter/material.dart';


void sshowDraggableModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isDismissible: true,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return GestureDetector(
        onVerticalDragDown: (_) {},
        child: DraggableScrollableSheet(
          initialChildSize: 0.88,
          maxChildSize: 0.95,
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(decoration: const BoxDecoration(

              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),

              child:  ListView(controller:scrollController ,
                children:[ Column(
                  children: [
                    Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context)
                                      .size
                                      .width *
                                      0.4),
                              child: const Text(
                                "All Topic",
                                style: TextStyle(
                                    fontWeight:
                                    FontWeight.bold,fontSize:17),
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "Done",
                                style: TextStyle(
                                    color: Colors.indigo),
                              ))
                        ],
                      ),
                    const Divider(),
                  ],
                ),

                   const AllTopics(),
                  ],
                )

              );
          },
        ),
      );
    },
  );
}
