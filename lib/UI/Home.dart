import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/provider/settingsProvider.dart';
import 'package:theme/UI/settings.dart';

class Home extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context)=>SettingsProvider(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Center(child: Text('Provider')),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
                    },
                    child: Icon(
                      Icons.settings,
                    ),
                  ),
                )
              ],
            ),
            body: Center(
                  child: Text(
                      Provider.of<SettingsProvider>(context).getUnits(),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),


          );
        }
      ),
    );
  }
}
