

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/Home.dart';
import 'package:theme/provider/settingsProvider.dart';

void main() {

  runApp(ChangeNotifierProvider(
    create: (BuildContext context)=>SettingsProvider(),
    child: (MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch:  Colors.purple,
          accentColor: Colors.deepPurpleAccent
      ),
      title: 'Provider',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        'Setting':(context)=>Home(),
      },
    )),
  ));
}