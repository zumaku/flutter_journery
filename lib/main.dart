import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        
        appBar: AppBar(
          title: Center(child: Text("Aplikasiku")),
        ),

        body: Center(
          child: Text("Nilai Sekarang $nilai"),
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              nilai++;
            }
          );
        }),

        
      ),
    );
  }
}
