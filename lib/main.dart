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
          title: Text("Belajar Butten"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [

            // Elevate Button
            ElevatedButton(
              onPressed: () {
                // Aksi ketika tombol ditekan
              },
              child: Text('Elevated Button'),
            ),

            // Text Button
            TextButton(
              onPressed: () {
                // Aksi ketika tombol ditekan
              },
              child: Text('Text Button'),
            ),

            // Outline Button
            OutlinedButton(
              onPressed: () {
                // Aksi ketika tombol ditekan
              },
              child: Text('Outlined Button'),
            ),

            // Icon Button
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () {
                // Aksi ketika tombol ditekan
              },
            ),
          ],
        ),
      ),
    );
  }
}
