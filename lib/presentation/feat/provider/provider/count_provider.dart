import 'package:flutter/material.dart';

class CountProvider with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners(); // 상태 변경 알림
  }

  void decrement() {
    _count--;
    notifyListeners(); // 상태 변경 알림
  }
}
