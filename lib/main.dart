import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    double containerHeight = screenWidth / 3;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'fadliinlov3',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_box_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu_rounded),
            onPressed: () {},
          ),
        ],
      ),

      // Body
      body: SingleChildScrollView(scrollDirection: Axis.vertical, child: Column(
        children: <Widget>[
          // PicProfile until Bio
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                // Profile & n numbers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // PicProfile
                    Container(
                      width: 84,
                      height: 84,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage("images/profile.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // N Post, Followers, dan Following
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "28",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "postingan",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "473",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "pengikut",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "383",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "mengikuti",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),

                // Bio
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Zul Fadli Ahmad",
                    textAlign: TextAlign.left,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                    ),
                  ),
                ),
                Text("🏫 : Babussalam Selayar"),
                Text("🏛 : Teknik Informatika - UINAM"),
                Text("🕛 : Hidup cuma sekali, Surga tujuan abadi."),
                Text("selengkapnya", style: TextStyle(color: Colors.grey)),
              ],
            )
          ),

          // Sorotan
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: <Widget>[
              // Sorotan 1
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                    width: 65,
                    height: 65,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                      // border: Border.all(color: Colors.grey, width: 2),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white, width: 2.0),
                        image: DecorationImage(
                          image: AssetImage('images/sorotan1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text("typo")
                ])
              ),

              // Sorotan 2
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                    width: 65,
                    height: 65,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                      // border: Border.all(color: Colors.grey, width: 2),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white, width: 2.0),
                        image: DecorationImage(
                          image: AssetImage('images/sorotan2.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text("After Class")
                ])
              ),

              // Sorotan 3
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                    width: 65,
                    height: 65,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                      // border: Border.all(color: Colors.grey, width: 2),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white, width: 2.0),
                        image: DecorationImage(
                          image: AssetImage('images/sorotan3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text("Ngampus")
                ])
              ),

              // Sorotan 4
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                    width: 65,
                    height: 65,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                      // border: Border.all(color: Colors.grey, width: 2),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white, width: 2.0),
                        image: DecorationImage(
                          image: AssetImage('images/sorotan4.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text("Qala")
                ])
              ),

              // Sorotan 5
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                    width: 65,
                    height: 65,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                      // border: Border.all(color: Colors.grey, width: 2),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white, width: 2.0),
                        image: DecorationImage(
                          image: AssetImage('images/sorotan5.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text("Semester..")
                ])
              ),

              // Sorotan 6
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Container(
                    width: 65,
                    height: 65,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                      // border: Border.all(color: Colors.grey, width: 2),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white, width: 2.0),
                        image: DecorationImage(
                          image: AssetImage('images/sorotan6.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text("typo23")
                ])
              ),

            ]),
          ),

          // Navigasi Profile
          Row(children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black, width: 1.0))
                ),
                child: IconButton(
                  icon: Icon(Icons.grid_on_rounded),
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: IconButton(
                  icon: Icon(Icons.slideshow_rounded),
                  color: Colors.grey,
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: IconButton(
                  icon: Icon(Icons.person_pin_outlined),
                  color: Colors.grey,
                  onPressed: () {},
                ),
              ),
            )
          ],),
        
          // Postingan
          Column(children: [
            // Row 1
            Row(children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    width: screenWidth,
                    height: containerHeight,
                    // color: Colors.blue,
                    decoration: BoxDecoration(image: DecorationImage(
                      image: AssetImage('images/post1.jpg'),
                      fit: BoxFit.cover,
                    )
                  ),
                ))
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    width: screenWidth,
                    height: containerHeight,
                    // color: Colors.red,
                    decoration: BoxDecoration(image: DecorationImage(
                      image: AssetImage('images/post2.jpeg'),
                      fit: BoxFit.cover,
                    )
                  ),
                ))
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    width: screenWidth,
                    height: containerHeight,
                    // color: Colors.green,
                    decoration: BoxDecoration(image: DecorationImage(
                      image: AssetImage('images/post3.jpeg'),
                      fit: BoxFit.cover,
                    )
                  ),
                ))
              ),
            ]),

            // Row 2
            Row(children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    width: screenWidth,
                    height: containerHeight,
                    // color: Colors.blue,
                    decoration: BoxDecoration(image: DecorationImage(
                      image: AssetImage('images/post4.jpeg'),
                      fit: BoxFit.cover,
                    )
                  ),
                ))
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    width: screenWidth,
                    height: containerHeight,
                    // color: Colors.red,
                    decoration: BoxDecoration(image: DecorationImage(
                      image: AssetImage('images/post5.jpg'),
                      fit: BoxFit.cover,
                    )
                  ),
                ))
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    width: screenWidth,
                    height: containerHeight,
                    // color: Colors.green,
                    decoration: BoxDecoration(image: DecorationImage(
                      image: AssetImage('images/post6.jpeg'),
                      fit: BoxFit.cover,
                    )
                  ),
                ))
              ),
            ]),

            // Row 3
            Row(children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    width: screenWidth,
                    height: containerHeight,
                    // color: Colors.blue,
                    decoration: BoxDecoration(image: DecorationImage(
                      image: AssetImage('images/post7.jpg'),
                      fit: BoxFit.cover,
                    )
                  ),
                ))
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    width: screenWidth,
                    height: containerHeight,
                    // color: Colors.red,
                    decoration: BoxDecoration(image: DecorationImage(
                      image: AssetImage('images/post8.jpeg'),
                      fit: BoxFit.cover,
                    )
                  ),
                ))
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(1.5),
                  child: Container(
                    width: screenWidth,
                    height: containerHeight,
                    // color: Colors.green,
                    decoration: BoxDecoration(image: DecorationImage(
                      image: AssetImage('images/post9.jpg'),
                      fit: BoxFit.cover,
                    )
                  ),
                ))
              ),
            ]),
          
          ]),
        ],
      )),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.add_box_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.slow_motion_video),
              onPressed: () {},
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage("images/profile.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
