import 'package:checking_flutter/view/photographer_app/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'third_country_selection.dart';

class SecondSigninRequired extends StatefulWidget {
  const SecondSigninRequired({Key? key}) : super(key: key);

  @override
  State<SecondSigninRequired> createState() => _SecondSigninRequiredState();
}

class _SecondSigninRequiredState extends State<SecondSigninRequired> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('DG Company'),
          actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.help))
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
          )
        ),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding:EdgeInsets.all(20),
              color: Colors.grey[100],
              child: Column(
                children: [
                  Container(width:double.infinity,
                      child: Text('Sign-in Details Required',style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 12,),
                  Container(width:double.infinity,
                      child: Text('To set up your account, we need to collect your email address and password',
                        style: TextStyle(fontSize: 16),)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdCountrySeleciton(),));
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10,),
                        color: Colors.orange,
                      ),
                      child: Center(child: Text('Continue',style: TextStyle(fontSize: 20,color: Colors.white),)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
