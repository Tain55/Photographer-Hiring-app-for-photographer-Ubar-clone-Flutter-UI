import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../otp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 100),
          Container(
            width: 350,
            child:
            Text("Enter your phone number",textAlign: TextAlign.left,style: TextStyle(fontSize: 22,color: Colors.grey[900],),),
          ),
          SizedBox(height: 20,),
          Container(
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xffe9f1f4)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(

                  child: CountryCodePicker(
                    initialSelection: 'US',
                    showCountryOnly: true,
                    showOnlyCountryWhenClosed: false,
                  ),
                ),
                Container(
                  width: 200,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    maxLines: 1,
                    decoration: InputDecoration(
                        labelText: "Mobile number",
                        labelStyle: TextStyle(color: Colors.grey[600]),
                        border: InputBorder.none
                    ),
                  ),
                )
              ],
            ),
          ),

          SizedBox(height: 13,),

          Container(
              height: 60,
              width: 350,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.pinkAccent,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OtpForm()));
                },
                child: Text('Continue',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey[200]),),
              )

          ),


          SizedBox(height: 90,),

          Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(30))),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
                ),
                primary: Color(0xffe9f1f4),
                onPrimary: Colors.black,
                minimumSize: Size(double.infinity,50),
              ), icon: FaIcon(FontAwesomeIcons.google,color: Colors.red,),
              label: Text('Continue with Google',style: TextStyle(color: Colors.grey[700]),),
              onPressed: (){},
            ),
          ),

          SizedBox(height: 20,),

          Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30))),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
                ),
                primary: Color(0xffe9f1f4),
                onPrimary: Colors.black,
                minimumSize: Size(double.infinity,50),
              ), icon: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
              label: Text('Continue with Facebook',style: TextStyle(color: Colors.grey[700]),),
              onPressed: (){},
            ),
          ),




        ],
      ),
    );
  }
}

