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
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.amber[50],
            // child: Image.asset("img/js_art.jpeg"),  // Cara 1
            // child: Image(image: AssetImage("img/js_art.jpeg")),  // Cara 2
            child: Image.network(
              "https://akcdn.detik.net.id/community/media/visual/2024/05/08/presiden-joko-widodo-jokowi_169.jpeg?w=700&q=90",
              fit: BoxFit.cover,
            )
          )
        )
      ),
    );
  }
}