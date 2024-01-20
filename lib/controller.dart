import 'package:flutter/material.dart';

class ChangeButtonProvider extends ChangeNotifier {
  String selectRadio = '';
  void buttonChange(String value) {
    selectRadio = value;
    notifyListeners();
  }
}
