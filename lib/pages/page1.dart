import 'package:flutter/material.dart';
import 'package:flutter_application/pages/page2.dart';
import 'package:flutter_application/pages/page3.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page #1"),
        backgroundColor: Colors.amber[500],
      ),
      body: Column(children: [
        Center(child: Container(
          margin: EdgeInsets.all(10),
          width: 350,
          height: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/cat1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),)
      ],),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton.extended(
            label: Text('Ke Page 2'),
            icon: Icon(Icons.arrow_circle_right_outlined),
            backgroundColor: Colors.amber[200],
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              )
            },
          ),
          FloatingActionButton.extended(
            label: Text('Ke Page 3'),
            icon: Icon(Icons.arrow_circle_right_outlined),
            backgroundColor: Colors.amber[200],
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page3()),
              )
            },
          ),
        ],
      )
    );
  }
}