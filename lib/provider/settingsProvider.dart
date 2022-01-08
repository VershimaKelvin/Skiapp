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
    _ifTokosSelected=false;
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
    String units=sharedPreferences.getString('units');
    List<String> waxLines=sharedPreferences.getStringList('waxLines');
    bool ifSwixSelected=sharedPreferences.getBool('ifSwixSelected');
    bool ifTokosSelected=sharedPreferences.getBool('ifTokosSelected');

    ifSwixSelectedMethod(ifSwixSelected);
    ifTokosSelectedMethod(ifTokosSelected);

    if(units != null){
      setUnits(units);
    }
    if(waxLines != null){
      setWaxLines(waxLines);
    }



  }

}