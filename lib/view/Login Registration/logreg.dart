import 'package:checking_flutter/view/photographer_app/home_page.dart';
import 'package:flutter/material.dart';

class LogReg extends StatefulWidget {
  const LogReg({Key? key}) : super(key: key);

  @override
  State<LogReg> createState() => _LogRegState();
}

class _LogRegState extends State<LogReg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/account_cover.jpg'),
                  fit: BoxFit.cover,
                )
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text('Login or Register'),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  print('Button pressed!');
                                },
                                child: Text('Login'),
                              ),

                              ElevatedButton(
                                onPressed: () {
                                  print('Button pressed!');
                                },
                                child: Text('Registration'),
                              ),
                            ],

                          ),
                        ),

                        GestureDetector(

                        ),
                      ],


                    )
                  ],
                ),
              )

            ),
          ),

        ],
      ),
    );
  }
}
