import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var myItems = [
      {
        "img":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqO9LaSL7hVKmkl5P0c-5BlWahxrANSWy-VWwmWrm7jw&s=10",
        "title": "Andorid",
      },
      {
        "img":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs2kdveLZN5a5pcI6up-BewPmj2f37Tja-98VSTthEsA&s=10",
        "title": "Phones",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Page"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Image.network(myItems[index]['img']!, height: 100, width: 100),
                SizedBox(width: 20),
                Text(
                  myItems[index]['title']!,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
