import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'See Details/see_details.dart';

class Earnings extends StatefulWidget {
  const Earnings({Key? key}) : super(key: key);
  @override
  State<Earnings> createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Earnings")
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Column(
                    children: [
                      const SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: Text("Earnings", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width/2-8,
                            color: const Color(0xffa62c2c),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Column(
                                children: const [
                                  SizedBox(height: 10,),
                                  SizedBox(width: double.infinity, child: Text("May9-May16",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xfffaf2e6)),textAlign: TextAlign.left,)),
                                  SizedBox(height: 10,),
                                  SizedBox(width: double.infinity, child: Text("\$572.95",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Color(0xfffaf2e6)),textAlign: TextAlign.left,)),

                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width/2-8,
                            color: const Color(0xff80a1c2),
                          )
                        ],
                      ),
                      const SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Online",style: TextStyle(fontSize: 16,color: Colors.grey[600] ,fontWeight: FontWeight.bold),),
                          Text("18 h 0 m",style: TextStyle(fontSize: 16,color: Colors.grey[600],fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const Divider(
                        height: 35,
                        thickness: .3,
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Work Count",style: TextStyle(fontSize: 16,color: Colors.grey[600] ,fontWeight: FontWeight.bold),),
                          Text("50",style: TextStyle(fontSize: 16,color: Colors.grey[600],fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const Divider(
                        height: 35,
                        thickness: .3,
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Points",style: TextStyle(fontSize: 16,color: Colors.grey[600] ,fontWeight: FontWeight.bold),),
                          Text("50",style: TextStyle(fontSize: 16,color: Colors.grey[600],fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const SizedBox(height: 30,),

                      GestureDetector(
                        child: Container(
                          width: double.infinity,
                          height: 60,
                            color: Colors.grey[200],
                            child: Center(child: Text("See detials",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey[600]),textAlign: TextAlign.center,)),

                        ),

                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const EarningDetails()));},
                      ),
                      const Divider(
                        height: 35,
                        thickness: .3,
                      ),
                      SizedBox(width:double.infinity,child: Text("Balance:\$573.95",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey[600]),textAlign: TextAlign.left,)),
                      SizedBox(width:double.infinity,child: Text("Payment scheduled for may 16",style: TextStyle(fontSize: 16,color: Colors.grey[600]),textAlign: TextAlign.left,)),
                      const SizedBox(height: 20,),
                      Container(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(50)

                              ),
                              child: const Center(child: Text("Cash Out",style: TextStyle(fontSize: 16,color: Colors.white),)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
            ),
            const SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.blueGrey[100],
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bar_chart_sharp, size: 30,color: Colors.grey[600],),
                    Text("See historical earnings trends in your area",style: TextStyle(fontSize: 16, color: Colors.grey[600], fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
