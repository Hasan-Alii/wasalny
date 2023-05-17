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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for(int i=0; i<widget.latLngList.length; i++){
      latlngss.add(widget.latLngList[i]);
    }

    for(int i=1; i<widget.latLngList.length; i++){
      newlatLngcor.add(widget.latLngList[i]);
      newstations.add(widget.stationsList[i]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'now in: ${newstations.first}',
            style: style1,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsetsDirectional.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${newstations.first}',
                      style: style,
                    ),
                    Row(
                      children: [
                        Text(
                          'المحطة الحالية:',
                          style: style,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.north_east,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${newstations[1]}',
                      style: style,
                    ),
                    Row(
                      children: [
                        Text(
                          'المحطة التالية:',
                          style: style,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.north_east,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '03:12 م',
                      style: style,
                    ),
                    Row(
                      children: [
                        Text(
                          'الوقت',
                          style: style,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.access_time,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextButton(
                            child: Text(''),
                            onPressed: () {
                              if(newlatLngcor.length>3){
                                launchURL(String url) async {
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                }
                                String url = 'https://www.google.com/maps/dir/?api=1&origin=${newlatLngcor.first.latitude},${newlatLngcor.first.longitude}&destination=${newlatLngcor[1].latitude},${newlatLngcor[1].longitude}&travelmode=driving&dir_action=navigate';
                                launchURL(url);
                              }else{
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LogoutScreen(),));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content:
                                    Text('هذه اخر محظة'),
                                    duration: Duration(seconds: 5),
                                    backgroundColor: Colors.red,
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.chevron_left,
                              color: Color(0xFF040C4D),
                              size: 24,
                            ),
                            Row(
                              children: [
                                Text('فتح الخريطة', style: style),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 10, 10),
                                  child: Icon(
                                    Icons.directions_sharp,
                                    color: Color(0xFF040C4D),
                                    size: 24,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextButton(
                            child: Text(''),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => NextStation(latLngList: newlatLngcor, stationsList: newstations, ticketsList: widget.ticketsList,),
                                  ));
                              print('next station is: ${newlatLngcor[1]}');
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.chevron_left,
                              color: Color(0xFF040C4D),
                              size: 24,
                            ),
                            Row(
                              children: [
                                Text('تأكيد الوصول', style: style),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 10, 10),
                                  child: Icon(
                                    Icons.verified_user,
                                    color: Color(0xFF040C4D),
                                    size: 24,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => LogoutScreen()),
                      );
                    },
                    child: Text('خروج الركاب', style: style,),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(100, 100)),
                      backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                    ),
                  ),
                ),
                SizedBox(width: 12,),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('دخول الركاب', style: style),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(100, 100)),
                      backgroundColor: MaterialStateProperty.all(Colors.grey),
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

TextStyle style = TextStyle(fontSize: 22, color: Colors.black);

TextStyle style1 = TextStyle(fontSize: 25, color: Colors.white);
