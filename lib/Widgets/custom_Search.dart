import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_sheet1.dart';

class CustomSearch extends SearchDelegate {
  List<String> allData = [
    'ui design',
    'animation',
    'personal branding',
    'wordpress development',
    'business growth',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      TextButton(
        child: Text(
          "Cancel",
          style: TextStyle(color: Colors.indigo.shade600),
        ),
        onPressed: () {
          close(context, null);
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.search_rounded),
      onPressed: () {
        query = '' ;
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,leading:Container(width: 1,height: 1,),

        title: Column( children: const [
          Text(
            "Top Searches",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ]),
      ),

      body: ListView.builder(
          itemCount: matchQuery.length,
          itemBuilder: (context, index) {
            var result = matchQuery[index];
            return Column(
              children: [
                ListTile(
                  title: Text(result,
                      style: TextStyle(color: Colors.indigo.shade600)),
                ),
                Divider(),
              ],
            );
          }),



      floatingActionButton: FloatingActionButton(hoverElevation: 20,
        onPressed: () {

          sshowDraggableModalBottomSheet(context);


        },
        child: Icon(Icons.add,color: Colors.black,),
      ),
    );
  }
}
