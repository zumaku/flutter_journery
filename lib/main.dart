import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Container"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Strawberry Pavlova",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 500,
                  child: Text(
                    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Culpa, ratione nesciunt laudantium harum consectetur eos dicta placeat impedit animi ut quos molestiae ex. Quae numquam modi dolorum velit aliquam! Autem.",
                    // overflow: TextOverflow.ellipsis,
                    // maxLines: 1,
                    // softWrap: false,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
