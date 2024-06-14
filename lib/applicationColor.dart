import 'package:flutter/material.dart';

class ApplicationColor extends ChangeNotifier {
  bool _isLightBlue = true;

  bool get isLightBlue => _isLightBlue;

  Color get color => _isLightBlue ? Colors.lightBlue : Colors.amber;

  void toggleColor(bool isLightBlue) {
    _isLightBlue = isLightBlue;
    notifyListeners();
  }
}