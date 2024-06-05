import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hua"),
          backgroundColor: Colors.amber[300],
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Text(
              "ZUMAKU $index",
              style: TextStyle(
                fontSize: 32,
              ),
            );
          },
        ),
      ),
    );
  }
}