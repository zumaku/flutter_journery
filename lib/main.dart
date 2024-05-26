import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key}); // Tambahkan titik koma di sini

  @override
  Widget build(BuildContext context) {
    // Perbaiki sintaks di sini
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Center(
              child: Text(
                "Farm House Lembang",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24,
                ),
              )
            ),
          ),
        ],
      ),
    ));
  }
}
