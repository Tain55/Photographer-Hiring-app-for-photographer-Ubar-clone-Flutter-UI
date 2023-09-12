import 'package:flutter/material.dart';

import 'eighth_nid.dart';

class NidPhoto extends StatefulWidget {
  const NidPhoto({Key? key}) : super(key: key);


  @override
  State<NidPhoto> createState() => _NidPhotoState();
}

class _NidPhotoState extends State<NidPhoto> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DG Company'),
        elevation: 0,),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.grey[100],
                padding: EdgeInsets.all(15),
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 15,),

                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Take a photo of you NID Front Side',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,),

                          SizedBox(height: 20,),

                          Text('Take a picture of the front side of your national ID card (include all corners). '
                              '1.Makesure that picture is clear and all words are easily readable.'
                              '2.all of the information like your name, date of birth, gender, the expiration date etc. should be clearly visible. 3. If any'
                              'of the information is blurry or roo shiny(from camera flash), card will be rejected. 4.Missing information or tampering with infmation'
                              'or the photo will also lead to rejection.'
                            ,style: TextStyle(fontSize: 15,color: Colors.grey[800]),),

                          SizedBox(height: 40,),

                        ],
                      ),
                    ),


                    Icon(Icons.featured_video_outlined,size: 150,)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NidInformation(),));
              },
              child: Container(
                margin: EdgeInsets.all(15),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                ),
                child: Center(child: Text('Take Photo',style: TextStyle(fontSize: 18,color: Colors.white),textAlign: TextAlign.center,)),

              ),
            )

          ],
        ),
      ),
    );
  }
}
