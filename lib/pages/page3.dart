import 'package:flutter/material.dart';
import 'package:flutter_application/pages/page1.dart';
import 'package:flutter_application/pages/page2.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page #3"),
        backgroundColor: Colors.amber[500],
      ),
      body: Column(children: [
        Center(child: Container(
          margin: EdgeInsets.all(10),
          width: 350,
          height: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/cat3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),)
      ],),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton.extended(
            label: Text('Ke Page 1'),
            icon: Icon(Icons.arrow_circle_right_outlined),
            backgroundColor: Colors.amber[200],
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page1()),
              )
            },
          ),
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
        ],
      )
    );
  }
}