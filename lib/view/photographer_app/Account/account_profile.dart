import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/account_cover.jpg'),
                  fit: BoxFit.fill
                )
              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage('images/profile_pic.jpg'),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: Text("Tauhidul",style: TextStyle(fontSize: 22, color: Colors.white),),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("4.92", style: TextStyle(fontSize: 20,color: Colors.grey[800]),),
                          Icon(Icons.star, size: 20,color: Colors.grey[800])
                        ],
                      ),
                      Icon(Icons.arrow_circle_right_rounded,size: 20,color: Colors.grey[800])
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("60%", style: TextStyle(fontSize: 20,color: Colors.grey[800]),),
                          Icon(Icons.man_outlined, size: 20,color: Colors.grey[800])
                        ],
                      ),
                      Icon(Icons.help,size: 20,color: Colors.grey[800])
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("5%", style: TextStyle(fontSize: 20,color: Colors.grey[800]),),
                          Icon(Icons.not_interested_outlined, size: 20,color: Colors.grey[800])
                        ],
                      ),
                      Icon(Icons.help,size: 20,color: Colors.grey[800])
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 15,),
                Text("8,787 Services over 8 year", style: TextStyle(fontSize: 15, color: Colors.grey[700], fontWeight: FontWeight.bold),),
                Text("Tell customers a little bit about yourself", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: (){},
                    child: Text("ADD DETAILS", style: TextStyle(color: Colors.grey[800],fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200],
                    elevation: 0
                  ),
                ),
                SizedBox(height: 15,),
              ],
            ),
            Divider(
              thickness: 1.5,
            ),
            SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Compliments",style: TextStyle(fontSize: 20),),
                  ElevatedButton(onPressed: (){},
                      child: Text("View all",style: TextStyle(fontSize: 20,color: Colors.grey[700]),),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[50],
                      elevation: 0
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage('images/account_compliment_two.jpg'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 90,
                        child:Text("Excellent Service",style: TextStyle(fontSize: 15,color: Colors.grey[700]),textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage('images/account_compliment_one.jpg'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 90,
                        child:Text("Excellent Service",style: TextStyle(fontSize: 15,color: Colors.grey[700]),textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage('images/account_compliment_three.jpg'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 90,
                        child:Text("Excellent Service",style: TextStyle(fontSize: 15,color: Colors.grey[700]),textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage('images/award_one.jpg'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 90,
                        child:Text("Excellent Service",style: TextStyle(fontSize: 15,color: Colors.grey[700]),textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage('images/award_two.jpg'),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 90,
                        child:Text("Excellent Service",style: TextStyle(fontSize: 15,color: Colors.grey[700]),textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.green
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 90,
                        child:Text("Excellent Service",style: TextStyle(fontSize: 15,color: Colors.grey[700]),textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                  SizedBox(width: 30,),
                ],
              ),
            ),
            SizedBox(height: 40,),

////////////////////////////////////////////////////////////Achivements//////////////////////////////////////////////////////

             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 width: double.infinity,
                 child: Text("Achivements",style: TextStyle(fontSize: 20,),textAlign: TextAlign.left,),
               )
             ),
            SizedBox(height: 20,),


            Container(
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 30,),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: AssetImage('images/award_one.jpg'),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 90,
                          child:Text("Award one",style: TextStyle(fontSize: 15,color: Colors.grey[700]),textAlign: TextAlign.center,),
                        )
                      ],
                    ),
                    SizedBox(width: 30,),

                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: AssetImage('images/award_two.jpg'),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 90,
                          child:Text("Award two",style: TextStyle(fontSize: 15,color: Colors.grey[700]),textAlign: TextAlign.center,),
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
    );
  }
}
