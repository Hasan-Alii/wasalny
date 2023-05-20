import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'logOut.dart';
import 'map_page.dart';

class NextStation extends StatefulWidget {
  final List<LatLng> latLngList;
  final List<String> stationsList;
  List<dynamic> ticketsList;

  NextStation({
    required this.ticketsList,
    required this.latLngList,
    required this.stationsList,
  });

  @override
  State<NextStation> createState() => _NextStationState();
}

class _NextStationState extends State<NextStation> {
  List<LatLng> latlngss = [];
  List<LatLng> newlatLngcor = [];
  List<String> newstations = [];
  String val = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (int i = 0; i < widget.latLngList.length; i++) {
      latlngss.add(widget.latLngList[i]);
    }

    for (int i = 1; i < widget.latLngList.length; i++) {
      newlatLngcor.add(widget.latLngList[i]);
      newstations.add(widget.stationsList[i]);
    }
  }

  Future<String> getTime() async {
    Dio dio = new Dio();
    Response response = await dio.get(
        "https://maps.googleapis.com/maps/api/distancematrix/json?units=metric&origins=${newlatLngcor.first.latitude},${newlatLngcor.first.longitude}&destinations=${newlatLngcor[1].latitude},${newlatLngcor[1].longitude}&key=AIzaSyDIl4Wj2K4n0LqryXnMGNl7aMHxuNZ7zYM");
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
    return val =
        response.data["rows"][0]["elements"][0]["duration"]["text"] as String;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: ElevatedButton(
          onPressed: () {},
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
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        title: Text(
          '${newstations.first} station',
          style: style1,
        ),
      ),
      body: Container(
        height: double.infinity,
        padding: EdgeInsetsDirectional.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/2pins.png",
                  scale: 24,
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${newstations.first}',
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
                            '${newstations[1]}',
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

            Divider(
              height: 40,
              color: appBlue,
              indent: 1,
              endIndent: 5,
              thickness: 1,
            ),

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
                      ':الوقت المتبقي للمحطة التالية',
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
                  if (newlatLngcor.length > 2) {
                    launchURL(String url) async {
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    }

                    String url =
                        'https://www.google.com/maps/dir/?api=1&origin=${newlatLngcor.first.latitude},${newlatLngcor.first.longitude}&destination=${newlatLngcor[1].latitude},${newlatLngcor[1].longitude}&travelmode=driving&dir_action=navigate';
                    launchURL(url);
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogoutScreen(),
                        ));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('هذه اخر محظة'),
                        duration: Duration(seconds: 5),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
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
                  if (newlatLngcor.length > 2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NextStation(
                            latLngList: newlatLngcor,
                            stationsList: newstations,
                            ticketsList: widget.ticketsList,
                          ),
                        ));
                    print('next station is: ${newlatLngcor[1]}');
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogoutScreen(),
                        ));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('هذه اخر محظة'),
                        duration: Duration(seconds: 5),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                },
              ),
            ),

            Text(
              '${getTime().then((String result){
                setState(() {
                  val = result;
                });
              })}$val',
              style: btnstyle,
            ),


          ],
        ),
      ),
    );
  }
}

TextStyle style =
    TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);

TextStyle style1 =
    const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold);

TextStyle btnstyle = TextStyle(fontSize: 22, color: Colors.white);

TextStyle btnstyle2 = TextStyle(fontSize: 22, color: Colors.black);


Color appBlue = Color(0xFF040C4D);

Color appGreen = Color(0xFF10462E);
