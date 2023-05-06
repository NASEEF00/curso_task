
import 'package:curso_task/Widgets/carousel_slider_widget.dart';
import 'package:flutter/material.dart';

import '../Widgets/bottom_sheet1.dart';
import '../Widgets/bottom_sheet2.dart';
import '../Widgets/custom_Search.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            showSearch(context: context, delegate: CustomSearch());
          },
          icon: const Icon(Icons.search),
        ),
        title:  TextField( onTap: () {
          showSearch(context: context, delegate: CustomSearch());
        },
          decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "what do you want to learn?",
              hintStyle: TextStyle(fontSize: 15)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CarouselWidget(),
            Row(
              children: [
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Topics",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )),
                Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextButton(
                        child: const Text(
                          'All Topic',
                          style: TextStyle(color: Colors.indigo),
                        ),
                        onPressed: () {
                          sshowDraggableModalBottomSheet(context);
                        })),
              ],
            ),
            const SizedBox(height: 60),
            Row(
              children: [
                const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        "Popular Courses",
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
                        onPressed: () {
                          sshowDraggableModalBottomSheet2(context);
                        })),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
