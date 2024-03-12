import 'package:flutter/material.dart';

class BottomNavController extends ChangeNotifier {
  int _currentIndex = 0;

  int get getCurrentIndex => _currentIndex;

  void onCurruntIndexUpdate({required int currentIndex}) {
    _currentIndex = currentIndex;

    notifyListeners();
  }
}
