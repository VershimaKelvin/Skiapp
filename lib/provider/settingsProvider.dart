import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier{
  String units;
  List<String> waxLines;

  SettingsProvider(){
    units ='imperail';
    waxLines = ['Swix', 'Tokos'];
  }

  //getters
  getUnits()=>units;
  getWaxlines()=>waxLines;

  //setters
  void setUnits(String value){
    units=value;
    notifyListeners();
  }

  void setWaxLines(List<String> value){
    waxLines=value;
    notifyListeners();
  }
}