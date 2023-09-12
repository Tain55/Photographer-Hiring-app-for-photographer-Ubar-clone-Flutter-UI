import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Promotions extends StatefulWidget {
  const Promotions({Key? key}) : super(key: key);

  @override
  State<Promotions> createState() => _PromotionsState();
}

class _PromotionsState extends State<Promotions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 6,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border(
                          top: BorderSide(width: .25,color: Colors.grey)
                      )
                  ),
                  padding: EdgeInsets.only(left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Thursday'),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    height: 145,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          padding: EdgeInsets.only(left: 0),
                          child: Text('All day',style: TextStyle(fontWeight:FontWeight.bold, fontSize: 17),textAlign: TextAlign.start,),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.64,
                                  padding: EdgeInsets.only(left: 9),
                                  child: Text('BDT 100 extra by completing 10 trips (rides only)',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                                ),
                                Icon(Icons.flag_circle, size: 43, color: Colors.grey[600],)
                              ],
                            ),
                            SizedBox(height: 15,),
                            Container(
                                padding: EdgeInsets.only(left: 9),
                                child: Text('Day 1 of 8',style: TextStyle(fontSize: 13,color: Colors.grey[800]),)),
                            SizedBox(height: 4,),
                            LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width * 0.76,
                              animation: true,
                              animationDuration: 1000,
                              percent: .40,
                              lineHeight: 8,
                              progressColor: Colors.deepOrange[400],
                              backgroundColor: Colors.grey[300],
                              barRadius: Radius.circular(16),
                            ),
                          ],
                        )
                      ],
                    )
                )
              ],
            );
          }
      )
    );
  }
}
