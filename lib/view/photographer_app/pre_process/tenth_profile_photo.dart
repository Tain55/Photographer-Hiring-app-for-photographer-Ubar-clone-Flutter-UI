import 'package:flutter/material.dart';

class ProfilePhoto extends StatefulWidget {
  const ProfilePhoto({Key? key}) : super(key: key);

  @override
  State<ProfilePhoto> createState() => _ProfilePhotoState();
}

class _ProfilePhotoState extends State<ProfilePhoto> {
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
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Take your profile photo',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,),

                          SizedBox(height: 20,),

                          Text('Your profile photo helps pwople recognize you. Please note that once you submit your profile photo it cannot be changed.'
                            ,style: TextStyle(fontSize: 15,color: Colors.grey[800]),),

                          Text('1.Face the camera directly with your eyes and month clearly visible.'
                            ,style: TextStyle(fontSize: 15,color: Colors.grey[800]),),
                          Text('2.Make sure the photo is well lit,fee of glare,and in focus'
                            ,style: TextStyle(fontSize: 15,color: Colors.grey[800]),),
                          Text('1.No photos of a photo,filters,or alternations.'
                            ,style: TextStyle(fontSize: 15,color: Colors.grey[800]),),

                        ],
                      ),
                    ),

                    SizedBox(height: 40,),
                    Container(
                      height: 270,
                      width: 270,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        image: DecorationImage(
                          image: AssetImage('images/photo_profile.jpg'),
                          fit: BoxFit.cover,
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                //Navigator.push(context, MaterialPageRoute(builder: (context) => SecondSigninRequired(),));
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
