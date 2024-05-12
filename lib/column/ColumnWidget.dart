import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  int hexColor(String c) {
    String color = '0xff' + c;
    color = color.replaceAll('#', '');
    int dColor = int.parse(color);
    return dColor;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.teal,
          padding: EdgeInsets.all(30),
          child: const Text(
            'First',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.greenAccent,
          padding: EdgeInsets.all(30),
          child: const Text(
            'Second',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.green,
          padding: EdgeInsets.all(30),
          child: const Text(
            'Third',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
