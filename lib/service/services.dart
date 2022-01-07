import 'package:shared_preferences/shared_preferences.dart';

class Services {

  String units;
  List<String> waxLines;
  bool isSwixSelected;
  bool isTokosSelected;


  Services(){

}

  savePrefrences(String units,List<String> waxLines,bool ifSwixSelected,bool ifTokosSelected)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('units', units);
    sharedPreferences.setStringList('waxLines', waxLines);
    sharedPreferences.setBool('ifSwixSelected', ifSwixSelected);
    sharedPreferences.setBool('ifTokosSelected', ifTokosSelected);
  }

  Future<String> loadUnitPrefrences()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('units');
  }

  Future<List<String>> loadWaxlinesPrefrences()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getStringList('waxLines');
  }
  Future<bool> loadSwixPrefrences()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool('ifSwixSelected');
  }
  Future<bool> loadTokosPrefrences()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool('ifTokosSelected');
  }
}