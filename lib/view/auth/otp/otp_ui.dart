import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpUi extends StatefulWidget {
  const OtpUi({Key? key}) : super(key: key);

  @override
  State<OtpUi> createState() => _OtpUiState();
}

class _OtpUiState extends State<OtpUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 360,child: Text('Verification Code',textAlign: TextAlign.left,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.deepOrange[800]),)),
            const SizedBox(height: 15,),
            SizedBox(width: 360,child: Text('We have sent the code verification to',textAlign: TextAlign.left,style: TextStyle(fontSize: 15,color: Colors.grey[500]),)),
            const SizedBox(height: 15,),
            SizedBox(width: 360, child: Text('+017******55',textAlign: TextAlign.left,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey[800]),)),
            const SizedBox(height: 35,),
            Form(
              child: SizedBox(
                width: 360,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if (value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if (value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextField(
                        onChanged: (value){
                          if (value.length == 1){
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 68,
                      width: 64,
                      child: TextFormField(
                        onChanged: (value){
                          if (value.length == 1){
                            //FocusScope.of(context).nextFocus();
                          }
                        },
                        style: Theme.of(context).textTheme.headline6,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange[800],
                    border: Border.all(width: 1)
                  ),
                  child: const Center(child: Text('Resend',)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
