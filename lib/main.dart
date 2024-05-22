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

        body: Row(
          // Flex Box
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ],
        ),






        // body: Container(
        //   width: 200,
        //   height: 100,
        //   // padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
        //   padding: EdgeInsets.all(10),
        //   // color: Colors.blue,

        //   // Decoration
        //   decoration: BoxDecoration(
        //     color: Colors.yellow,
        //     shape: BoxShape.circle,
        //     border: Border.all(color: Colors.orange, width: 3)

        //   ),


        //   child: Text(
        //     "Hallo",
        //     style: TextStyle(
        //       fontSize: 45,

        //     ),
        //   )
        // ),
      ),
    );
  }
}
