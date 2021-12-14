import 'package:flutter/material.dart';
import 'package:theme/settings.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    );
  }
}
