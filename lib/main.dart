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
        ),
        body: Container(
          width: double.infinity, // Set the container to take the full width of the screen
          height: double.infinity, // Set the container to take the full height of the screen
          color: Color.fromRGBO(250, 250, 250, 1),
          child: Center(
            child: Container(
              margin: EdgeInsets.all(20),
              color: Color.fromARGB(255, 243, 33, 131),
              child: Container(
                margin: EdgeInsets.all(20),
                color: const Color.fromARGB(255, 136, 26, 18),
                child: Container(
                  margin: EdgeInsets.all(20),
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                          child: Center(
                            child: Text(
                              'Aqila Zahrah',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.red,
                          child: Center(
                            child: Text(
                              '60200121115',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
