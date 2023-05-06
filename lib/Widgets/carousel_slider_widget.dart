import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../Constants/lists.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int _current = 0;



  @override
  Widget build(BuildContext context) {
    return
    Column(
        children: [
          CarouselSlider.builder(
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.28,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      ptexts[index],
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize:
                              MediaQuery.of(context).textScaleFactor * 12.5),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      mtexts[index],
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).textScaleFactor * 20),
                    ),
                    Text(
                      mmtexts[index],
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).textScaleFactor * 20),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      names[index],
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: MediaQuery.of(context).textScaleFactor * 12),
                    ),
                  ],
                ),
              );
            },
            itemCount: names.length,
            options: CarouselOptions(
              autoPlay: false,
              onPageChanged: (index,rsn){
                setState(() {
                  _current = index;
                });
              }
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: names.map((ctx) {
              int index = names.indexOf(ctx);
              return Container(
                width: MediaQuery.of(context).size.width*0.17,
                height: 1.5,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 3,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: _current == index
                      ? Colors.indigo
                      : Color.fromRGBO(0, 0, 0, 0.2),
                ),
              );
            }).toList(),
          )
        ],
      );

  }
}
