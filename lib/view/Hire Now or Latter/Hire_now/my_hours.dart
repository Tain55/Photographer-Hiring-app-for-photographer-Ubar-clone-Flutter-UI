import 'package:checking_flutter/view/Hire%20Now%20or%20Latter/hire_now.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHours extends StatelessWidget {
  late int hours;
  MyHours({required this.hours});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        hours.toString(),
        style: TextStyle(
          fontSize: 40,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
