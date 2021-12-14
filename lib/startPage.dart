import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class Level1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(),
    );
  }
}
class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level3(),
    );
  }
}

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(Provider.of<String>(context)),
    );
  }
}

