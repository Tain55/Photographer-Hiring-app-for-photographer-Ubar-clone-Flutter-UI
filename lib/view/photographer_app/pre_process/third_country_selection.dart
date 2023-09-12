import 'dart:ffi';

import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

import 'fifth_take_location.dart';


class ThirdCountrySeleciton extends StatefulWidget {
  const ThirdCountrySeleciton({Key? key}) : super(key: key);

  static String verify = "";

  @override
  State<ThirdCountrySeleciton> createState() => _ThirdCountrySelecitonState();
}

class _ThirdCountrySelecitonState extends State<ThirdCountrySeleciton> {

  String _currentAddress = "Loading";
  String _currentCountry = "";
  String _currentCity = "";
  String _currentStreetAddress = "";
  String _currentPostalCode = "";
  bool isLoading = false;
  String phoneCode = "";
  Country _selectedDialogCountry =
  CountryPickerUtils.getCountryByIsoCode("US");

  Future<Position> getPosition() async{
    LocationPermission permission;
    permission = await Geolocator.checkPermission();

    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission == await LocationPermission.deniedForever){
        return Future.error("Location not available");
      }
    }
    else{
      print("Location not available");
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {

        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  bool isTapped = false;

  final _formKey = GlobalKey<FormState>();

  final _bloodGroupList = ["A+", "A-", "B+", "B-", "0+", "0-", "AB+", "AB-"];
  String _dropdownSelectValue = "A+";

  var phone ="";

  _phoneVerification() async{
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneCode + phone,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {
        ThirdCountrySeleciton.verify = verificationId;
        // Navigator.push(context, MaterialPageRoute(
        //     builder: (_)=> OtpScreen(
        //       name: nameController.text,
        //       bloodGroup: _dropdownSelectValue,
        //       phoneNumber: phoneCode + phone,
        //       currentCountry: _currentCountry,
        //       currentCity: _currentCity,
        //       currentPostalCode: _currentPostalCode,
        //       currentStreetAddress: _currentStreetAddress,
        //     )));
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  location() async{
    Position position = await _determinePosition();
    print("Location: $position}");
    getAddressFromLatLong(position);
  }
  Future<void> getAddressFromLatLong(Position position) async{
    List<Placemark> placemark = await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemark[0];
    _currentAddress = '${place.isoCountryCode}';
    print(_currentAddress);
    setState(() {
      _selectedDialogCountry = CountryPickerUtils.getCountryByIsoCode(_currentAddress);
      phoneCode = "+${_selectedDialogCountry.phoneCode}";
      _currentCountry = '${place.country}';
      _currentStreetAddress = '${place.street}';
      _currentCity = '${place.locality}';
      _currentPostalCode = '${place.postalCode}';
      print(_currentStreetAddress);
    });
    print("Phone code: $phoneCode");
  }

  Widget _buildDialogItem(Country country) => Row(
    children: <Widget>[
      CountryPickerUtils.getDefaultFlagImage(country),
      const SizedBox(width: 8.0),
      const Icon(Icons.arrow_drop_down_rounded),
      const Gap(10),
      const SizedBox(
        width: 0.9,
        height: 25,
        child: ColoredBox(
          color: Colors.black45,
        ),
      ),
      const Gap(10),
      Text("+${country.phoneCode}"),
    ],
  );

  void _openCountryPickerDialog() => showDialog(
    context: context,
    builder: (context) => Theme(
      data: Theme.of(context).copyWith(primaryColor: Colors.pink),
      child: CountryPickerDialog(
        titlePadding: const EdgeInsets.all(8.0),
        searchCursorColor: Colors.pinkAccent,
        searchInputDecoration: const InputDecoration(hintText: 'Search...'),
        isSearchable: true,
        title: const Text('Select your phone code'),
        onValuePicked: (Country country) {
          setState(() {
            _selectedDialogCountry = country;
            phoneCode = "+${country.phoneCode}";
            print("PhCode: ${country.phoneCode}");
          });
        },
        itemBuilder: _buildDialogItem,
        priorityList: [
          CountryPickerUtils.getCountryByIsoCode('BD'),
          CountryPickerUtils.getCountryByIsoCode('US'),
        ],
      ),
    ),
  );

  @override
  void initState(){
    location();
    print(_selectedDialogCountry.phoneCode);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.only(left: 15, right: 15),
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 50,),
                          Container(
                            width: double.infinity,
                            child:
                            Text("What's you phone number or email?",textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey[900],),),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            width: double.infinity,
                            child: TextFormField(
                              controller: phoneController,
                              keyboardType: TextInputType.phone,
                              onChanged: (value){
                                try{
                                  if(value.substring(0,1) == "0"){
                                    phone = value.substring(1,11);
                                    print("01: "+value.substring(1,11));
                                  }
                                  else{
                                    phone = value;
                                    print(value);
                                  }
                                }
                                catch(e){
                                  print(e.toString());
                                }
                              },
                              validator: (value){
                                if(value!.isEmpty){
                                  return "Please Enter Phone Number";
                                }
                                else if(value.length<10 || value.length>11){
                                  return "Please enter valid a number";
                                }
                                else{
                                  return null;
                                }
                              },
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffe9f1f4),
                                  border: new OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none
                                  ),
                                  hintText: "Mobile Number",
                                  prefixIcon: InkWell(
                                    onTap: _openCountryPickerDialog,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Gap(10),
                                        _buildDialogItem(_selectedDialogCountry),
                                        const Gap(10),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),

                          Container(
                              height: 60,
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  primary: Colors.orange,
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => EarnWithDG()));
                                },
                                child: Text('Continue',textAlign: TextAlign.center,style: TextStyle(fontSize:20, color: Colors.white),),
                              )

                          ),


                          SizedBox(height: 30,),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(border: Border(top: BorderSide(width: .25) )),
                            child: Text('Or',textAlign: TextAlign.center,),
                          ),
                          SizedBox(height: 20,),

                          Container(
                            width: double.infinity,
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
                              ), icon: FaIcon(FontAwesomeIcons.google,color: Colors.red,),
                              label: Text('Continue with Google',style: TextStyle(color: Colors.grey[700]),),
                              onPressed: (){},
                            ),
                          ),

                          SizedBox(height: 10,),

                          Container(
                            width: double.infinity,
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
                              ), icon: FaIcon(FontAwesomeIcons.apple,color: Colors.black,),
                              label: Text('Continue with Apple',style: TextStyle(color: Colors.grey[700]),),
                              onPressed: (){},
                            ),
                          ),

                          SizedBox(height: 10,),

                          Container(
                            width: double.infinity,
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
                              ), icon: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
                              label: Text('Continue with Facebook',style: TextStyle(color: Colors.grey[700]),),
                              onPressed: (){},
                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            width: double.infinity,
                            child: Text('Find my account',style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline, fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            height: 50,
                            width: double.infinity,
                            child: Text('By proceeding, you consent to get calls, WhatApp or SMS messages, including by automated means, from DG Company and its affiliates to the number provided.'
                              ,style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11
                              ),),
                          ),
                        ],
                      ),
                    ),
                  ),


                  SizedBox(height: 130,),


                  Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('This site is protected by reCAPTCHA and the Google Privacy Policy and Terms of Servide apply.',style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

