import 'package:flutter/material.dart';

class MainViewModel with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    // 상태 바꾸고
    _count++;
    notifyListeners();
  }

  void reduce() {
    _count--;
    notifyListeners();
  }
}
