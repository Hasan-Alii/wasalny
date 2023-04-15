import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wasalny/screens_driver/driver_home_page.dart';
import 'package:wasalny/screens_driver/logOut.dart';
import 'package:wasalny/screens_driver/maher%20screen.dart';
import 'package:wasalny/screens_driver/map_page.dart';
import 'package:wasalny/screens_driver/rider1.dart';
import 'package:wasalny/screens_wasalny/payment_page_3.dart';
import 'package:wasalny/screens_wasalny/welcome_page.dart';
import 'package:wasalny/screens_wasalny/home_page.dart';
import 'package:wasalny/screens_wasalny/destination_page.dart';
import 'package:wasalny/screens_wasalny/payment_page_1.dart';
import 'package:wasalny/screens_wasalny/payment_page_2.dart';
import 'package:wasalny/screens_wasalny/settings_page.dart';


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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DriverHomePage(),
    );
  }
}
