import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.all(30.0),
          color: Colors.orange,
          child: const Text('First',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
        Container(
          padding: const EdgeInsets.all(30.0),
          color: Colors.pink,
          child: const Text('Second',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
        Container(
          padding: const EdgeInsets.all(30.0),
          color: Colors.blue,
          child: const Text('Third',
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
      ],
    );
  }
}
