import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uber/ziad_screens/book_trip.dart';
import 'package:uber/ziad_screens/login_screen.dart';
import 'package:uber/ziad_screens/phone.dart';
import 'package:uber/ziad_screens/register_screen.dart';
import 'package:uber/ziad_screens/review.dart';
import 'package:uber/ziad_screens/verify_OTP.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'phone': (context) => PhoneOTPScreen(), 'otp' : (context) => OTPScreen() , 'book_trip': (context) => BookTripScreen()},
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhoneOTPScreen(),
    ));
}