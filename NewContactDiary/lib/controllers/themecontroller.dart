import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier{
  bool _SunIsOn = true;

  get CurrentTheme {
    return _SunIsOn;
  }

  ChangeTheme(){
    _SunIsOn = !_SunIsOn;
    notifyListeners();
  }
}