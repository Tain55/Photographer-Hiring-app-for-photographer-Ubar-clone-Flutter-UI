import 'package:checking_flutter/view/photographer_app/pre_process/secont_sign_in_required.dart';
import 'package:flutter/material.dart';

class FirstWelcome extends StatefulWidget {
  const FirstWelcome({Key? key}) : super(key: key);

  @override
  State<FirstWelcome> createState() => _FirstWelcomeState();
}

class _FirstWelcomeState extends State<FirstWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/camera_welcome_screen.jpg"),
              fit: BoxFit.cover,
          )
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(top: 40,left: 20),
                width: double.infinity,
                child: Text('DG Company',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
              ),
              Container(
                color: Colors.white,
                width: double.infinity,
                height: 230,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 180,
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 20,
                        bottom: 15
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: .5)
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Welcome to the Photography app',style: TextStyle(fontSize: 25),),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondSigninRequired(),));
                        },
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              color: Colors.orange,
                              child: Center(child: Text('Continue',style: TextStyle(fontSize: 18,color: Colors.white),textAlign: TextAlign.center,)),

                              //***************make it clickable(((((((((((((((())))))))))))))))
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(height:50,width:double.infinity,
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Learn more',style: TextStyle(fontSize: 15,color: Colors.blue),),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
