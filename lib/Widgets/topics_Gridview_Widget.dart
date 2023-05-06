import 'package:flutter/material.dart';

class GridWid extends StatefulWidget {
  const GridWid({Key? key}) : super(key: key);

  @override
  State<GridWid> createState() => _GridWidState();
}

class _GridWidState extends State<GridWid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.grey.shade300),
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            child: Image.asset('assets/icons/art.png'),
          ),
          title: const Text(
            'Art and Humanities',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            'History,Music & Art,Philosophy',
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
        ),
        ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.grey.shade300),
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            child: Image.asset('assets/icons/art.png'),
          ),
          title: const Text(
            'Art and Humanities',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            'History,Music & Art,Philosophy',
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
        ),
        ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.grey.shade300),
              borderRadius: const BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            child: Image.asset('assets/icons/art.png'),
          ),
          title: const Text(
            'Art and Humanities',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            'History,Music & Art,Philosophy',
            style: TextStyle(
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ],
    );
  }
}
