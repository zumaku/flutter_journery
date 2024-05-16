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
            child: Text("Nome 3"),
          ),
          backgroundColor: Colors.green,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            // height: 5,
            fontSize: 24,
          ),
        ),
        body: Container(
          child: Container(
            margin: EdgeInsets.all(100),
            color: Colors.green,

            child: Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "Zul Fadli Ahmad", 
                    textAlign: TextAlign.center,
                  )
                ),
              ),
            ),

          ),
        ),
      ),
    );
  }
}