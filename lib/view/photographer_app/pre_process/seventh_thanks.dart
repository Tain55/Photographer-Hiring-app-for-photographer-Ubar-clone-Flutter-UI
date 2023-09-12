import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'eighth_nid.dart';

class ThanksForInformation extends StatefulWidget {
  const ThanksForInformation({Key? key}) : super(key: key);

  @override
  State<ThanksForInformation> createState() => _ThanksForInformationState();
}

class _ThanksForInformationState extends State<ThanksForInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.check,size: 60,color: Colors.green,),
                    SizedBox(height: 50),
                    Text('Thanks for your information',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,),)
                  ],
                ),
              ),
            ),
            
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text('Go to account status',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold ),)),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NidInformation(),));
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text('Go to next step',style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold ),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
