import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    var myItems = [
      {
        "img":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs2kdveLZN5a5pcI6up-BewPmj2f37Tja-98VSTthEsA&s=10",
        "title": "Phone",
      },
      {
        "img":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqO9LaSL7hVKmkl5P0c-5BlWahxrANSWy-VWwmWrm7jw&s=10",
        "title": "Android Phone",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Page"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(myItems[index]['img']!, height: 100, width: 100),
                SizedBox(height: 10),
                Text(myItems[index]['title']!),
              ],
            ),
          );
        },
      ),
    );
  }
}
