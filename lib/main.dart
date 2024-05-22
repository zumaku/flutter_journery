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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text("Kotak Merah"),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text("Kotak Hijau"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text("Kotak Biru"),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  child: Text("Kotak Kuning"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
