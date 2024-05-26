import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Container Example')),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20.0), // Memberikan ruang di sekitar konten dalam Container.
            margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0), // Memberikan ruang di sekitar Container dari widget lain.
            decoration: BoxDecoration(
              color: Colors.blue, // Menentukan warna latar belakang Container.
              shape: BoxShape.circle, // Menentukan bentuk Container menjadi lingkaran.
              border: Border.all(
                color: Colors.black, // Menentukan warna border.
                width: 2.0, // Menentukan lebar border.
              ),
            ),
            child: Text(
              'Hello World',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
