import 'package:flutter/material.dart';
import 'package:flutter_application/applicationColor.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (BuildContext context) => ApplicationColor(),
        child: Scaffold(
          //AppBar
          appBar: AppBar(
            title: Consumer<ApplicationColor>(
              builder: (BuildContext context, applicationColor, _) => Text(
                "State Management Provider", 
              style: TextStyle(
                color: applicationColor.color, 
              ),),
            ),
          ),
          //Body
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Consumer for AnimatedContainer
                Consumer<ApplicationColor>(
                  builder: (context, applicationColor, _) => AnimatedContainer(
                    width: 100,
                    height: 100,
                    color: applicationColor.color,
                    duration: Duration(milliseconds: 500),
                  ),
                ),
                //Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Text
                    Text("AB"), //Amber
                    //Consumer for Switch
                    Consumer<ApplicationColor>(
                      builder: (BuildContext context, applicationColor, _) => Switch(
                        value: applicationColor.isLightBlue,
                        onChanged: (value) {
                          applicationColor.toggleColor(value);
                        },
                      ),
                    ),
                    //Text
                    Text("LB"), //LightBlue
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}