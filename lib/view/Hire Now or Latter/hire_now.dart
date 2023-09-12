import 'package:checking_flutter/view/Hire%20Now%20or%20Latter/Hire_now/my_hours.dart';
import 'package:checking_flutter/view/Hire%20Now%20or%20Latter/Hire_now/my_munites.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hireNow extends StatefulWidget {
  const hireNow({Key? key}) : super(key: key);

  @override
  State<hireNow> createState() => _hireNowState();
}

class _hireNowState extends State<hireNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hire for',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35, color: Colors.deepOrange),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              Container(
                height: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Hours',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Container(
                      child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.red,size: 20,),
                    ),
                    Container(
                      width: 70,
                      child: ListWheelScrollView.useDelegate(
                          itemExtent: 50,
                          perspective: 0.01,
                          diameterRatio: 1.2,
                          physics: FixedExtentScrollPhysics(),
                          childDelegate: ListWheelChildBuilderDelegate(
                              childCount: 11,
                              builder: (context, index) {
                                return MyHours(
                                  hours: index,
                                );

                              })
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text('Minutes',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Container(
                      child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.red,size: 20,),
                    ),

                    Container(
                      width: 70,
                      child: ListWheelScrollView.useDelegate(
                          itemExtent: 50,
                          perspective: 0.01,
                          diameterRatio: 1.2,
                          physics: FixedExtentScrollPhysics(),
                          childDelegate: ListWheelChildBuilderDelegate(
                              childCount: 60,
                              builder: (context, index) {
                                return MyMunites(
                                  mins: index,
                                );

                              })
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );

  }
}



