
import 'dart:convert';

import 'package:checking_flutter/view/Login%20Registration/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../photographer_app/home_page.dart';
import 'Services/auth_services.dart';
import 'Services/globals.dart';
import 'login_screen.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  String email = '';
  String firstname = '';
  String lastname = '';
  String phonenumber = '';
  String password = '';

  createAccountPressed() async {
    bool emailValid =  RegExp(r'[A-Za-z0-9\s!"#$%&\()*+,-./:;<=>?@[\\]^_`{|}~]').hasMatch(email);
    if(emailValid){
      http.Response response = await AuthService.register(firstname, lastname, email, phonenumber, password);
      Map responseMap = jsonDecode(response.body);
      if(response.statusCode==200){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => const LoginScreen())
        );
      }else{
        errorSankBar(context, responseMap.values.first[0]);
      }
    }else{
      errorSankBar(context, 'Email not valid');
    }
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Registration',
          style: TextStyle(
            fontSize: 20,
            fontWeight:FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First name',
                hintText: 'First name',
              ),
              onChanged: (value){
                firstname = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last name',
                hintText: 'Last name',
              ),
              onChanged: (value){
                lastname = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone number',
                hintText: 'Phone number',
              ),
              onChanged: (value){
                phonenumber = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Email',
              ),
              onChanged: (value){
                email = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Password',
              ),
              onChanged: (value){
                password = value;
              },
            ),
            const SizedBox(
              height: 40,
            ),
            RoundedButton(
              btnText: 'Create Account',
              onBtnPressed: () => createAccountPressed(),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> const LoginScreen()));
              },
              child: const Text('already have an account',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                )
              ),

            )
          ],
        ),
      ),
    );
  }
}
