
import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff1d1e33),
      ),
    );
  }
}
