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

class MaherScreen extends StatefulWidget {
  final List<LatLng> latLngcor;
  final List<String> stations;
  List<dynamic> tickets;

  MaherScreen({
    required this.tickets,
    required this.latLngcor,
    required this.stations,
  });

  @override
  State<MaherScreen> createState() => _MaherScreenState();
}

class _MaherScreenState extends State<MaherScreen> {
  List<LatLng> latlngss = [];
  List<LatLng> newlatLngcor = [];
  List<String> newstations = [];
  String val = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (int i = 0; i < widget.latLngcor.length; i++) {
      latlngss.add(widget.latLngcor[i]);
    }

    for (int i = 0; i < widget.latLngcor.length; i++) {
      newlatLngcor.add(widget.latLngcor[i]);
      newstations.add(widget.stations[i]);
    }
  }


  Future<String> getTime() async {
    Dio dio = new Dio();
    Response response = await dio.get(
        "https://maps.googleapis.com/maps/api/distancematrix/json?units=metric&origins=${latlngss.first.latitude},${latlngss.first.longitude}&destinations=${latlngss[1].latitude},${latlngss[1].longitude}&key=AIzaSyDIl4Wj2K4n0LqryXnMGNl7aMHxuNZ7zYM");
    //////////////////////////////////////////////////////////////////////////////////////
    // Map<dynamic ,dynamic> jsonMap = json.decode(response.data);

    // print(response.data["rows"][0]["elements"][0]["duration"]["text"]);
    // ========================================================================
    // print(response.data);
    // ========================================================================
    // print(
    //   response.data.keys.forEach(
    //     (k) {
    //       print(k);
    //       print(response.data[k]);
    //     },
    //   ),
    // );
    return val = response.data["rows"][0]["elements"][0]["duration"]["text"] as String;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Boarding(
                    latLng: newlatLngcor,
                    stationNames: newstations,
                    tickets: widget.tickets,
                    newStaionss: newstations,
                  ),
                ));          },
          child: Text('دخول الركاب', style: style1),
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size.fromHeight(50)),
            backgroundColor:
            MaterialStateProperty.all<Color>(Colors.white),
            foregroundColor:
            MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(color: Color(0xFF040C4D), width: 2),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        leadingWidth: 0,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
          },
        ),
        backgroundColor: Colors.black,
        title: Text(
          '${newstations.first} station',
          style: btnstyle,
        ),
      ),
      body: Container(
        padding: EdgeInsetsDirectional.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/2pins.png",
                  scale: 24,
                ),
                SizedBox(width: 8,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${widget.stations.first}',
                            style: style1,
                          ),
                          Row(
                            children: [
                              Text(
                                ':المحطة الحالية',
                                style: style,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.my_location_sharp,
                                color: appBlue,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${widget.stations[1]}',
                            style: style1,
                          ),
                          Row(
                            children: [
                              Text(
                                ':المحطة التالية',
                                style: style,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Icon(
                                Icons.north_east,
                                color: appBlue,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Divider(height: 40,color: appBlue,indent: 1,endIndent: 5,thickness: 1,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$val',
                  style: style,
                ),
                Row(
                  children: [
                    Text(
                      'الوقت المتبقي للمحطة التالية',
                      style: style,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.access_time,
                      color: appBlue,
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 16,
            ),

            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8, 50, 8, 8),
              child: ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      const Size.fromHeight(50)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      appBlue),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //   RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(30.0),
                  //     side: BorderSide(color: Color(0xFF040C4D), width: 2),
                  //   ),
                  // ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 24,
                    ),
                    Text('فتح الخريطة', style: btnstyle),
                    Icon(
                      Icons.directions_sharp,
                      color: Colors.white,
                      size: 24,
                    )
                  ],
                ),

                onPressed: () {
                  // Navigator
                  //     .push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => MapPage(stations as List<String>, latLngcor as List<LatLng>),
                  //     ));
                  launchURL(String url) async {
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  }
                  String url =
                      'https://www.google.com/maps/dir/?api=1&origin=${latlngss.first.latitude},${latlngss.first.longitude}&destination=${latlngss[1].latitude},${latlngss[1].longitude}&travelmode=driving&dir_action=navigate';
                  launchURL(url);
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
              child: ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      const Size.fromHeight(50)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      appGreen),
                  foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.white),
                  // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //   RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(30.0),
                  //     side: BorderSide(color: Color(0xFF040C4D), width: 2),
                  //   ),
                  // ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 24,
                    ),
                    Text('تأكيد الوصول', style: btnstyle),
                    Icon(
                      Icons.verified_user_sharp,
                      color: Colors.white,
                      size: 24,
                    )
                  ],
                ),
                onPressed: () {

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NextStation(
                          latLngList: newlatLngcor,
                          stationsList : newstations,
                          ticketsList: widget.tickets,
                        ),
                      ));

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => Boarding(
                  //         latLng: newlatLngcor,
                  //         stationNames: newstations,
                  //         tickets: widget.tickets,
                  //         newStaionss: newstations,
                  //       ),
                  //     ));
                  print('تاكيد الوصول');
                },
              ),
            ),




            Visibility(
              visible: false,
              child: Text(
                '${getTime().then((String result){
                  setState(() {
                    val = result;
                  });
                })}$val',
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