import 'package:flutter/material.dart';
import 'package:stroll_test_first/model/answers_model.dart';

class HomeController extends ChangeNotifier {
  final List<AnserListModelClass> answrLit = [
    AnserListModelClass(
        answer: 'The peace in the early mornings', id: 1, optionName: 'A'),
    AnserListModelClass(
        answer: 'The magical golden hours', id: 2, optionName: 'B'),
    AnserListModelClass(
        answer: 'Wind - down time after dinners', id: 3, optionName: 'C'),
    AnserListModelClass(
        answer: 'The serenity past midnight', id: 4, optionName: 'D'),
  ];

  int _selectedAns = 1;

  int get getSelectedAnser => _selectedAns;

  void onSlectedAnsChnages({required int slectedAnsId}) {
    _selectedAns = slectedAnsId;
    notifyListeners();
  }
}
