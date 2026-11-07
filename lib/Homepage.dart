import 'package:flutter/material.dart';
import 'package:noyon314g/Calculator_page.dart';
import 'package:noyon314g/Container_page.dart';
import 'package:noyon314g/Registration_page.dart';
import 'package:noyon314g/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Home Page"),
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
              title: Text("Calculator"),
              leading: Icon(Icons.calculate),
              hoverColor: Colors.grey,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Calculator()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Loginpage()),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        fixedSize: Size(100, 20),
                        side: BorderSide(),
                        elevation: 10,
                      ),
                      child: Text("Login"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => container()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 74, 49, 49),
                        foregroundColor: Colors.white,
                        fixedSize: Size(150, 20),
                        side: BorderSide(),
                      ),
                      child: Text("Container"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Registrationpage(),
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.white,
                        fixedSize: Size(110, 20),
                        side: BorderSide(),
                      ),
                      child: Text("Register"),
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
          ],
        ),
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
