import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider with ChangeNotifier{
  String _units;
  List<String> _waxLines;
  bool _ifSwixSelected;
  bool _ifTokosSelected;




  SettingsProvider(){
    _units ='Imperial';
    _waxLines = ['Swix', 'Tokos'];
    _ifTokosSelected=true;
    _ifSwixSelected=false;
    loadPreferences();
  }

  bool get ifSwixSelected => _ifSwixSelected;
  bool get ifTokosSelected => _ifTokosSelected;
  getUnits()=>_units;
  getWaxlines(int value)=>_waxLines[value];

  //setters
  void setUnits(String value){
    _units=value;
    notifyListeners();
    savePreferences();
  }

  void setWaxLines(List<String> value){
    _waxLines=value;
    notifyListeners();
    savePreferences();
  }

  ifTokosSelectedMethod(bool value) {
    _ifTokosSelected = value;
    notifyListeners();
    savePreferences();
  } //getters

  ifSwixSelectedMethod(bool value) {
    _ifSwixSelected = value;
    notifyListeners();
    savePreferences();
  }


  savePreferences()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('units', _units);
    sharedPreferences.setStringList('waxLines', _waxLines);
    sharedPreferences.setBool('ifSwixSelected', _ifSwixSelected);
    sharedPreferences.setBool('ifTokosSelected', _ifTokosSelected);
  }

  loadPreferences()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    _units=sharedPreferences.getString('units');
    _waxLines=sharedPreferences.getStringList('waxLines');
    _ifSwixSelected=sharedPreferences.getBool('ifSwixSelected');
    _ifTokosSelected=sharedPreferences.getBool('ifTokosSelected');
    if(_units != null){
      setUnits(_units);
    }
    if(_waxLines != null){
      setWaxLines(_waxLines);
    }
    if(_ifSwixSelected != null){
      ifSwixSelectedMethod(_ifSwixSelected);
    }
    if(ifTokosSelectedMethod != null){
      ifTokosSelectedMethod(_ifTokosSelected);
    }



  }

}