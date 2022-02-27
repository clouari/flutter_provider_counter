import 'package:flutter/material.dart';

class MainViewModel with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  // 상태를 노출 하기 위해 getter (count를 창조할 때 _count 가 리턴된다.)
  // JAVA 식에선
  // int get count {
  // return _count }

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
