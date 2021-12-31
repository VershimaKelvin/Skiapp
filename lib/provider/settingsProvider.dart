import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier{
  String _units;
  List<String> _waxLines;
  bool _ifSwixSelected;
  bool _ifTokosSelected;



  SettingsProvider(){
    _units ='imperail';
    _waxLines = ['Swix', 'Tokos'];
    _ifTokosSelected=true;
    _ifSwixSelected=false;
  }

  bool get ifSwixSelected => _ifSwixSelected;
  bool get ifTokosSelected => _ifTokosSelected;
  getUnits()=>_units;
  getWaxlines(int value)=>_waxLines[value];

  //setters
  void setUnits(String value){
    _units=value;
    notifyListeners();
  }

  void setWaxLines(List<String> value){
    _waxLines=value;
    notifyListeners();
  }

  ifTokosSelectedMethod(bool value) {
    _ifTokosSelected = value;
    notifyListeners();
  } //getters

  ifSwixSelectedMethod(bool value) {
    _ifSwixSelected = value;
    notifyListeners();
  }
}