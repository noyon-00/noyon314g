import 'package:flutter/material.dart';
import 'Assignment3.dart';

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
            ListTile(
              title: Text("Person"),
              leading: Icon(Icons.person),
              hoverColor: Colors.black,
              onTap: () {},
            ),
            ListTile(
              title: Text("Homepage"),
              leading: Icon(Icons.home),
              hoverColor: Colors.grey,
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 152, 234, 54),
                      foregroundColor: Colors.white,
                      fixedSize: Size(100, 50),
                      side: BorderSide(),
                      elevation: 10,
                    ),
                    child: Text("Text Button"),
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 215, 129, 230),
                      foregroundColor: Colors.white,
                      fixedSize: Size(150, 20),
                      side: BorderSide(),
                    ),
                    child: Text("Elevated Button"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 145, 167, 134),
                      foregroundColor: Colors.white,
                      fixedSize: Size(200, 20),
                      side: BorderSide(),
                    ),
                    child: Text("OutlinedButton"),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(),
                  icon: Icon(Icons.login),
                ),
              ],
            ),
          ),
          const Assignment3(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        backgroundColor: const Color.fromARGB(255, 64, 161, 251),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        child: Icon(Icons.add),
      ),
    );
  }
}
