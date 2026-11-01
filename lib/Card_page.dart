import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Card(
            margin: EdgeInsets.all(30),
            color: Colors.purple,
            shadowColor: Colors.pinkAccent,
            elevation: 30,
            //shape: CircleBorder(),
            child: Center(child: Image.asset('assets/images/flt.jpg')),
          ),
        ),
      ),
    );
  }
}
