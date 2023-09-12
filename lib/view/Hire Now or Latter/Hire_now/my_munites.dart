import 'package:checking_flutter/view/Hire%20Now%20or%20Latter/hire_now.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMunites extends StatelessWidget {
  late int mins;
  MyMunites({required this.mins});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        mins.toString(),
        style: TextStyle(
          fontSize: 40,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
