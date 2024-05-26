import 'package:flutter/material.dart';
import 'dart:ui';
void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Text(
                  'Strawberry Pavlova',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed metus dui, luctus non ante a, convallis vulputate lacus. Aenean suscipit ultrices lorem, id ultrices ligula tristique vel. Ut justo lectus, sodales in commodo vel'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color: Colors.black),
                        Icon(Icons.star, color: Colors.black),
                        Icon(Icons.star, color: Colors.black),
                        Icon(Icons.star, color: Colors.black),
                        Icon(Icons.star, color: Colors.black),
                      ],
                    ),
                    Text(
                      '170 Reviews',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.kitchen, color: Colors.green[500]),
                          Text('PREP:'),
                          Text('25 min'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.timer, color: Colors.green[500]),
                          Text('COOK:'),
                          Text('1 hr'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.restaurant, color: Colors.green[500]),
                          Text('FEEDS:'),
                          Text('4-6'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}