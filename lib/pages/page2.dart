import 'package:flutter/material.dart';
import 'package:flutter_application/pages/page1.dart';
import 'package:flutter_application/pages/page3.dart';

class Page2 extends StatelessWidget {
  final String nama;
  const Page2({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page #2"),
        backgroundColor: Colors.amber[500],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber[500],
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.arrow_circle_right_outlined),
              title: Text('Page 1'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_circle_right_outlined),
              title: Text('Page 2'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2(nama: "Zumaku")),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_circle_right_outlined),
              title: Text('Page 3'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(children: [
        Center(child: Container(
          margin: EdgeInsets.all(10),
          width: 350,
          height: 350,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/cat2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),),
        Text('$nama')
      ],),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
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
        ],
      )
    );
  }
}