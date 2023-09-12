import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.white,
          child:Column(
            children: [
              SizedBox(height: 60,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 60,
                      width: 60,

                      child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(90),
                              ),primary: Colors.pinkAccent
                          ),
                          onPressed: (){Navigator.pop(context);},
                          icon: FaIcon(FontAwesomeIcons.arrowRight,color: Colors.grey[200],),
                          label: Text('')
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text('Loti marani', style: TextStyle(fontSize: 18,color: Colors.grey[800]),),
              )

            ],
          )
      ),
    );
  }
}