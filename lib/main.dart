import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String inputName = "";
  String displayText = "";

  TextEditingController inputNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(displayText),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: inputNameController, // Hubungkan controller ke TextField
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                ),
                onChanged: (text) {
                  setState(() {
                    inputName = text; // Update inputName saat teks berubah
                  });
                },
                onSubmitted: (text) {
                  setState(() {
                    displayText = text; // Update inputName saat teks berubah
                  });
                },
              ),
              SizedBox(height: 20), // Tambahkan jarak antara TextField dan teks
              Text('Hello, $inputName!'), // Tampilkan teks berdasarkan input
            ],
          ),
        ),
      ),
    );
  }
}