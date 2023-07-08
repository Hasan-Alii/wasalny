import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wasalny/screens_driver/next_station.dart';
import 'package:wasalny/screens_driver/rider1.dart';
import 'boarding.dart';
import 'logOut.dart';
import 'map_page.dart';
import 'package:dio/dio.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<LatLng> latlngss = [];
  List<LatLng> newlatLngcor = [];
  List<String> newstations = [];
  String val = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        leading: BackButton(
          color: appBlue,
          onPressed: () {
          },
        ),
        backgroundColor: appBlue,
        title: Center(
          child: Text(
            'سجل الرحلات السابقة',
            style: btnstyle,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsetsDirectional.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               Text("..لا يوجد رحلات سابقة", style:style,)
              ],
            ),

            Divider(height: 40,color: appBlue,indent: 1,endIndent: 5,thickness: 1,),





            Visibility(
              visible: false,
              child: Text(
                '.||.',
                style: btnstyle,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

TextStyle style = TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);

TextStyle style1 = TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold);

TextStyle btnstyle = TextStyle(fontSize: 22, color: Colors.white);

Color appBlue = Color(0xFF040C4D);

Color appGreen = Color(0xFF10462E);