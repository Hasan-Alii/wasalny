import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'logOut.dart';
import 'map_page.dart';

class MaherScreen extends StatelessWidget {
  final List<LatLng> latLngcor;
  final List<String> stations;

  MaherScreen({
    required this.latLngcor,
    required this.stations,
});

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
            'تدريب',
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
                    Text(
                      'أكاديمية الشروق',
                      style: style,
                    ),
                    Row(
                      children: [
                        Text(
                          'محطة',
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
                              Navigator
                                  .push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MapPage(),
                                  ));
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
                              print('Saved Places Button pressed');
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
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextButton(
                            child: Text(''),
                            onPressed: () {
                              print('Saved Places Button pressed');
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
                                Text('تخطي المحطة', style: style),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 10, 10),
                                  child: Icon(
                                    Icons.next_plan,
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
