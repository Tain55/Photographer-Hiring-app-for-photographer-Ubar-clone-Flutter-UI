import 'package:checking_flutter/view/Hire%20Now%20or%20Latter/hire_for_latter.dart';
import 'package:checking_flutter/view/auth/otp/otp_ui.dart';
import 'package:checking_flutter/view/auth/photographer_page.dart';
import 'package:checking_flutter/view/auth/signing_screen.dart';
import 'package:checking_flutter/view/auth/country_selection.dart';
import 'package:checking_flutter/view/auth/swipe_up_down.dart';
import 'package:checking_flutter/view/photographer_app/Inbox/inbox_home.dart';
import 'package:checking_flutter/view/photographer_app/Wallet/wallet.dart';
import 'package:checking_flutter/view/photographer_app/home_page.dart';
import 'package:checking_flutter/view/photographer_app/pre_process/eighth_nid.dart';
import 'package:checking_flutter/view/photographer_app/promotions/promotions.dart';
import 'package:checking_flutter/view/photographer_app/refer_friends/refer_friends.dart';
import 'package:flutter/material.dart';

import 'view/Hire Now or Latter/Hire_now/my_munites.dart';
import 'view/Hire Now or Latter/hire_now.dart';
import 'view/Login Registration/reg_screen.dart';
import 'view/photographer_app/Earnings/earnings.dart';
import 'view/photographer_app/pre_process/fifth_take_location.dart';
import 'view/photographer_app/pre_process/first.dart';
import 'view/photographer_app/pre_process/nineth_nid_photo.dart';
import 'view/photographer_app/pre_process/seventh_thanks.dart';
import 'view/photographer_app/pre_process/sixth_choose_category.dart';
import 'view/photographer_app/pre_process/tenth_profile_photo.dart';
import 'view/photographer_app/pre_process/third_country_selection.dart';
import 'view/Login Registration/logreg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The DG Company',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepOrange,
      ),
         // home:  Earnings(),
      //home: const Promotions()

        home: PhotographerHome()

    );
  }
}
