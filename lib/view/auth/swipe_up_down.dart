import 'dart:async';

import 'package:checking_flutter/view/Hire%20Now%20or%20Latter/hire_for_latter.dart';
import 'package:checking_flutter/view/auth/photographer_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../Hire Now or Latter/hire_now.dart';
import '../photographer_app/home_page.dart';
import 'circlde.dart';
import 'country_selection.dart';

class SwipeUpDown extends StatefulWidget {
  const SwipeUpDown({Key? key}) : super(key: key);
  @override
  State<SwipeUpDown> createState() => _SwipeUpDownState();
}

class _SwipeUpDownState extends State<SwipeUpDown> {
  get separatorBuilder => null;
  get itemCount => 1;
  
  static const maxSeconds = 6;
  int seconds = maxSeconds;
  Timer? timer;
  int stopTimer = 0;


  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if(seconds == 1){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => hireNow()));
      }
      setState(() {
        seconds--;
      });
      if(stopTimer == 1){
        timer.cancel();
      }
    });
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    int time = seconds;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Text('Hire now', style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
            ),
            SizedBox(height: 160,),
            Transform.rotate(
              angle: (90 * 3.1415927 / 180),
              child: Dismissible(
                onDismissed: (direction){
                  print(direction);
                  if(direction == DismissDirection.endToStart){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => hireNow()));
                    print('1');//right
                    stopTimer = 1;
                  }else{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => hireForeLatter()));
                    print('2');//left
                    stopTimer = 1;
                  }
                },
                key: ValueKey("tain"),

                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pinkAccent,
                  ),
                  child: Transform.rotate(angle: -90 *3.1416/180, child: Center(child: Text('$time', style: TextStyle(fontSize: 40),))),
                ),
              ),
            ),
            SizedBox(height: 160,),
            Container(
              width: double.infinity,
              child: Text('Hire for later', style: TextStyle(fontSize: 30),textAlign: TextAlign.center,),
            ),
          ],
        ),
      )
    );

  }
}
