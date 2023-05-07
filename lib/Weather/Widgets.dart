import 'package:curso_task/Weather/weather_Page_Provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class History_List extends StatelessWidget {
  const History_List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          child: Row(
            children: [
              Container(
                width: 60,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      DateFormat('dd MMM').format(DateTime.now()),
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Image(
                      height:25,
                      width: 32,
                      image: NetworkImage( Provider.of<Weather_Page_Provider>(context).weathericon),
                      fit: BoxFit.cover,
                    ),
                    Text("20°C",style:TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              Container(
                width: 60,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text( DateFormat('dd MMM').format(DateTime.now()),
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Image(
                      height:25,
                      width: 32,
                      image: NetworkImage( Provider.of<Weather_Page_Provider>(context).weathericon),
                      fit: BoxFit.cover,
                    ),
                    Text("20°C",style:TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              Container(
                width: 60,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      DateFormat('dd MMM').format(DateTime.now()),
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Image(
                      height:25,
                      width: 32,
                      image: NetworkImage( Provider.of<Weather_Page_Provider>(context).weathericon),
                      fit: BoxFit.cover,
                    ),
                    Text("20°C",style:TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              Container(
                width: 60,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      DateFormat('dd MMM').format(DateTime.now()),
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Image(
                      height:25,
                      width: 32,
                      image: NetworkImage( Provider.of<Weather_Page_Provider>(context).weathericon),
                      fit: BoxFit.cover,
                    ),
                    Text("20°C",style:TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              Container(
                width: 60,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      DateFormat('dd MMM').format(DateTime.now()),
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Image(
                      height:25,
                      width: 32,
                      image: NetworkImage( Provider.of<Weather_Page_Provider>(context).weathericon),
                      fit: BoxFit.cover,
                    ),
                    Text("20°C",style:TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              Container(
                width: 60,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      DateFormat('dd MMM').format(DateTime.now()),
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Image(
                      height:25,
                      width: 32,
                      image: NetworkImage( Provider.of<Weather_Page_Provider>(context).weathericon),
                      fit: BoxFit.cover,
                    ),
                    Text("20°C",style:TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              Container(
                width: 60,
                height: 100,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      DateFormat('dd MMM').format(DateTime.now()),
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Image(
                      height:25,
                      width: 32,
                      image: NetworkImage( Provider.of<Weather_Page_Provider>(context).weathericon),
                      fit: BoxFit.cover,
                    ),
                    Text("20°C",style:TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
