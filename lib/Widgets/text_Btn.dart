import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class txtBtn extends StatelessWidget{

   final String title;


   txtBtn({required this.title});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 2,
        ),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed('subTopics');
        },
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 13,
          ),
        ),
      ),
    );
  }

}