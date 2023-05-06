import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget txtBtn( String title ){

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