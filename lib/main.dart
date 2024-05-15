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
          title: Center(
            child: Text("Tes Container"),
          ),
          backgroundColor: Colors.deepOrange,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            // height: 5,
            fontSize: 24,
          ),
        ),
        body: Container(
          color: Colors.deepOrange,

          child: Container(
            margin: EdgeInsets.all(20),
            color: Colors.amber,

            child: Container(
              margin: EdgeInsets.all(20),
              color: Colors.redAccent,

              child: Container(
                margin: EdgeInsets.all(20),
                color: Colors.blueAccent,

                child: Container(
                  margin: EdgeInsets.all(20),
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}