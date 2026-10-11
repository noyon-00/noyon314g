import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.pink,
        border: Border.all(width: 5, color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: RadialGradient(colors: [Colors.pink, Colors.purple]),
      ),

      child: Text("Hello Container"),
    );
  }
}
