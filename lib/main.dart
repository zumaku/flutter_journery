import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (BuildContext context) => ApplicationColor(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _width = 100;
  int _height = 100;
  Color _color = Colors.blue;

  final TextEditingController _widthController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _colorController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _widthController.addListener(() {
      setState(() {
        _width = int.tryParse(_widthController.text) ?? 100;
      });
    });
    _heightController.addListener(() {
      setState(() {
        _height = int.tryParse(_heightController.text) ?? 100;
      });
    });
    _colorController.addListener(() {
      setState(() {
        final hexColor = _colorController.text;
        if (hexColor.length == 6 || (hexColor.length == 7 && hexColor.startsWith('#'))) {
          final colorString = hexColor.startsWith('#') ? hexColor.substring(1) : hexColor;
          try {
            _color = Color(int.parse('FF$colorString', radix: 16));
          } catch (e) {
            _color = Colors.blue;
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      drawer: Drawer(
        child: Center(
          child: Container(
            width: _width.toDouble(),
            height: _height.toDouble(),
            color: _color,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Width: $_width"),
              Text("Height: $_height"),
              TextField(
                controller: _widthController,
                decoration: const InputDecoration(labelText: 'Width'),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onChanged: (value) {
                  setState(() {
                    _width = int.tryParse(value) ?? 0;
                  });
                },
              ),
              TextField(
                controller: _heightController,
                decoration: const InputDecoration(labelText: 'Height'),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                onChanged: (value) {
                  setState(() {
                    _height = int.tryParse(value) ?? 0;
                  });
                },
              ),
              TextField(
                controller: _colorController,
                decoration: const InputDecoration(labelText: 'Color (Hex) #'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ApplicationColor extends ChangeNotifier {
  Color _color = Color(0xFF2196F3);

  Color get color => _color;

  void changeColor(Color newColor) {
    _color = newColor;
    notifyListeners();
  }
}