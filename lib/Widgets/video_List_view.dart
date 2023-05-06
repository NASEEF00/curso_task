import 'package:flutter/material.dart';

class Video_List_View extends StatelessWidget {
  const Video_List_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.grey.shade700, Colors.grey.shade200],
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 10,
                    left: 10,
                    child: Text(
                      "1h 12m  .  5 Lessons",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: GestureDetector(
                      child: const Icon(
                        Icons.bookmark_border,
                        color: Colors.white54,
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Introduction to Design Systems \nwith Figma",
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Azalea Susanti",
              style: TextStyle(color: Colors.grey),
            ),
          ),
           Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children:const [ Text("IDR 112.000",
                    style: TextStyle(color: Colors.indigoAccent,fontSize: 13),),
               SizedBox(width: 5),
               Text('IDR 219.00',
                 style: TextStyle(color: Colors.grey,
                   fontSize: 10,
                   decoration: TextDecoration.lineThrough,
                   decorationColor: Colors.grey,
                   decorationThickness: 2.0,
                 ),)
              ],),),
          
        ],
      ),
    );
  }
}
