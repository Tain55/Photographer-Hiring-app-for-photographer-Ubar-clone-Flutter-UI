import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';
import '../../config/style.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

import '../../otp.dart';

class CountryCode extends StatefulWidget {
  const CountryCode({Key? key}) : super(key: key);

  static String verify = "";

  @override
  State<CountryCode> createState() => _CountryCodeState();
}

class _CountryCodeState extends State<CountryCode> {

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
        CountryCode.verify = verificationId;
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
            margin: const EdgeInsets.only(left: 25, right: 25),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  Container(
                    width: 350,
                    child:
                    Text("Enter your phone number",textAlign: TextAlign.left,style: TextStyle(fontSize: 22,color: Colors.grey[900],),),
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
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
                        fillColor: AppColor.whiteBlueShade,
                        border: OutlineInputBorder(),
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
                  const SizedBox(height: 20,),
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
            ),
          ),
        ),
      ),
    );
  }
}
