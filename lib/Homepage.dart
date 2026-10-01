import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 194, 41, 221),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        //leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Noyon"),
              accountEmail: Text("abushahadatnoyuon2003@gmail.com"),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 148, 30, 233),
              ),
            ),
            ListTile(title: Text("Person"), leading: Icon(Icons.person)),
          ],
        ),
      ),
      body: Text(
        "Hello World Noyon",
        style: TextStyle(
          fontSize: 20,
          color: const Color.fromARGB(255, 54, 212, 104),
        ),
      ),
    );
  }
}
