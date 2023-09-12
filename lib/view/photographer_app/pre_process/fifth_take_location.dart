import 'package:flutter/material.dart';

import 'sixth_choose_category.dart';

class EarnWithDG extends StatefulWidget {
  const EarnWithDG({Key? key}) : super(key: key);

  @override
  State<EarnWithDG> createState() => _EarnWithDGState();
}

class _EarnWithDGState extends State<EarnWithDG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text('DG Company'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 70,
                  child: Icon(Icons.attach_money,color: Colors.green,size: 60,)
              ),
              SizedBox(height: 6,),
              Container(
                height: 40,
                child: Text('Earn with DG Company',
                    style: TextStyle(
                      fontSize: 30,
                    ),),
              ),
              SizedBox(height: 10,),
              Container(
                height: 70,
                child: Text('Decide when, where and how you want to earn.',
                  style: TextStyle(
                    fontSize: 18,
                  ),),
              ),
              SizedBox(height: 15,),
              Container(
                height: 30,
                width: double.infinity,
                child: Text('Where would you like to earn?',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                  ),),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: TextField (
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      //labelText: 'Enter Name',
                      //hintText: 'Enter Your Name'
                  ),
                )  ,
              ),
              SizedBox(height: 30,),
              Container(
                height: 30,
                child: Text('Referral Code (optional)',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold
                  ),),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: TextField (
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    //labelText: 'Enter Name',
                    //hintText: 'Enter Your Name'
                  ),
                )  ,
              ),
              SizedBox(height: 50,),
              Container(
                height: 100,
                width: double.infinity,
                child: Text('By processing, I agree that DG Company or its representatives may contact me by email, '
                    'phone, or SMS(indluding by automatic telephone dialing system)at the email address or number I provide,'
                    'including for marketing purposes.',
                  style: TextStyle(
                    fontSize: 14.5,
                    color: Colors.grey[500]
                  ),),
              ),

            ],
          ),
        ),
      ),
    floatingActionButton: FloatingActionButton.extended(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseCategory()));
    // Add your onPressed code here!
    },
    label: const Text('Next'),
    icon: const Icon(Icons.arrow_forward),
    backgroundColor: Colors.orange,
    ),

    );
  }
}
