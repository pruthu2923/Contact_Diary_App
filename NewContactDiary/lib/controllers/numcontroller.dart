import 'package:flutter/material.dart';

class NumController extends ChangeNotifier {
  int _Number = 0;

  get Num{
    return _Number;
}
  Increase(){
    _Number++;
    notifyListeners();
  }
  Decrease(){
    _Number--;
    notifyListeners();
  }
}