import 'dart:ffi';

import 'package:flutter/material.dart';

class PhotographerPage extends StatefulWidget {
  const PhotographerPage({Key? key}) : super(key: key);

  @override
  State<PhotographerPage> createState() => _PhotographerPageState();
}

class _PhotographerPageState extends State<PhotographerPage> {


bool a = false;
bool b = false;
bool c = false;
bool d = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 310,
        backgroundColor: Colors.grey[200],
        title: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back, color: Colors.grey[800],size: 30,)),

                    Container(
                      width: 300,
                      child: Text('Hire a Photographer', textAlign:TextAlign.center, style: TextStyle(color: Colors.grey[800],fontSize: 17.5),),
                    ),
                  ],
                ),
                SizedBox(height: 20,),

                Container(
                  height: 150,
                  width: 450,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[400]),
                        child: ElevatedButton(onPressed: (){
                          setState(() {
                            a = !a;
                            b = false;
                            c = false;
                            d = false;
                          });},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            primary: (a==false) ? Colors.pinkAccent:Colors.grey,
                          ),

                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 105,
                                    //width: ,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 130,
                                    child: Column(
                                      children: [
                                        Text('Architectural',textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.grey[200]),),
                                        Text('Photography',textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.grey[200]),),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                      SizedBox(width: 10,),

                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[400]),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            primary:  (b==false) ? Colors.pinkAccent:Colors.grey,
                          ),
                          onPressed: (){
                            setState(() {
                              a = false;
                              b = !b;
                              c = false;
                              d = false;
                            });
                          },
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 105,
                                    //width: ,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 130,
                                    child: Column(
                                      children: [
                                        Text('Weeding',textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.grey[200]),),
                                        Text('Photography',textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.grey[200]),),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[400]),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            primary:  (c==false) ? Colors.pinkAccent:Colors.grey,
                          ),
                          onPressed: (){setState(() {
                            a = false;
                            b = false;
                            c = !c;
                            d = false;
                          });},
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 105,
                                    //width: ,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 130,
                                    child: Column(
                                      children: [
                                        Text('Fashion',textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.grey[200]),),
                                        Text('Photography',textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.grey[200]),),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[400]),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            primary:  (d==false) ? Colors.pinkAccent:Colors.grey,
                          ),
                          onPressed: (){
                            setState(() {
                              a = false;
                              b = false;
                              c = false;
                              d = !d;
                            });
                          },
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 105,
                                    //width: ,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 130,
                                    child: Column(
                                      children: [
                                        Text('Architectural',textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.grey[200]),),
                                        Text('Photography',textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.grey[200]),),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20,),

                Container(
                  height: 50,
                  width: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Container(
                        height: 50,
                        width: 331,
                        decoration: BoxDecoration(color:Colors.grey[300], borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                              hintText: 'Choose shooting spot'
                          ),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.my_location, color: Colors.pinkAccent, size: 35,))
                    ],
                  ),
                ),
                SizedBox(height: 10,)

              ],
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
