import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  int _index = 0;
  String action = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Color(0xFF040C4D),
        width: 350,
        borderRadius: 40,
        itemBorderRadius: 40,
        onTap: (int val) => setState(() => _index = val),
        currentIndex: _index,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'home'),
          FloatingNavbarItem(icon: Icons.history, title: 'history'),
          FloatingNavbarItem(icon: Icons.person, title: 'profile'),
        ],
      ),
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          'Hello there!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color(0xFF10462E),
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(18, 18, 18, 18),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                                      child: Text(
                                        'Safe and Comfortable',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ), //safe & comfortable
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 10, 10),
                                      child: Text(
                                        'Enjoy your ride ➤',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ), //enjoy your ride
                                  ],
                                ), //text
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(9, 5, 5, 5),
                                  child: Image.asset(
                                    'assets/images/MainPageBus1.png',
                                    width: 110,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                ), //green bus image
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: TextButton(
                              style: ButtonStyle(

                              ),
                              onPressed: () {
                                print('green Button pressed');
                              },
                              child: Text(''),
                            ),
                          ),
                        ],
                      ),
                    ),
              ), //green box

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                child: Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Color(0xFF040C4D),
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Latest Ride',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      color: Colors.white54,
                                    ),
                                  ), //Latest Ride

                                  Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                    child: Text(
                                      'El-Hegaz Square',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ), //EL Hegaz square

                                  Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 0),
                                      child: Text(
                                        DateFormat('dd MMM . h:mm a')
                                            .format(DateTime.now()),
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14,
                                            color: Colors.white54),
                                      )), //date & time

                                  Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                    child: Text(
                                      '20 LE',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white54,
                                      ),
                                    ),
                                  ), //price
                                ],
                              ),
                            ), //latest ride description
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Image.asset(
                                  'assets/images/MainPageBus2.png',
                                  width: MediaQuery.of(context).size.width * 0.2,
                                  height: MediaQuery.of(context).size.height * 0.2,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ), //bus image
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: TextButton(
                          style: ButtonStyle(

                          ),
                          onPressed: () {
                            print('1st blue Button pressed');
                          },
                          child: Text(''),
                        ),
                      ),
                    ],
                  ),
                ),
              ), //1st blue box

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFF040C4D),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                        child: Text(
                          'Where to?',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: TextButton(
                          style: ButtonStyle(

                          ),
                          onPressed: () {
                            print('2nd blue Button pressed');
                          },
                          child: Text(''),
                        ),
                      ),
                    ],
                  ),
                ),
              ), //2nd blue box

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [

                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        'assets/images/star.png',
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ), //star image
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 8),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'El-Hegaz Square',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF040C4D),
                                            ),
                                          ), //el hegaz square
                                          Text(
                                            'El-Nozha, Cairo Governorate',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF040C4D),
                                              fontSize: 14,
                                            ),
                                          ), //el nozha, cairo
                                        ],
                                      ),
                                    ),
                                  ), //text
                                  Padding(
                                    padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                    child: Icon(
                                      Icons.chevron_right,
                                      color: Color(0xFF040C4D),
                                      size: 24,
                                    ),
                                  ), //arrow icon
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                child: TextButton(
                                  onPressed: () {
                                    print('1st white Button pressed');
                                  },
                                  child: Text(''),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ), //1st white box

                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Icon(
                                      Icons.star_sharp,
                                      color: Color(0xFF040C4D),
                                      size: 24,
                                    ),
                                  ), //star icon
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 10, 10),
                                      child: Text(
                                        'Saved Places',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ), //saved palces
                                  Padding(
                                    padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                    child: Icon(
                                      Icons.chevron_right,
                                      color: Color(0xFF040C4D),
                                      size: 24,
                                    ),
                                  ), //arrow icon
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                child: TextButton(
                                  onPressed: () {
                                    print('2nd white Button pressed');
                                  },
                                  child: Text(''),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ), //2nd white box
                    ],
                  ),
                ),
              ), //white boxes
            ],
          ),
        ),
      ),
    );
  }
}



//
// Padding(
// padding: EdgeInsetsDirectional.fromSTEB(32, 0, 32, 20),
// child: Container(
// width: 350,
// height: 50,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(40),
// color: Color(0xFF040C4D),
// ),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// IconButton(
// onPressed: () {
// print('home button pressed');
// },
// icon: IconButton(
// onPressed: () {},
// icon: Icon(
// Icons.home_filled,
// color: Colors.white,
// size: 15,
// ),
// ),
// ), //home navigation button
// IconButton(
// onPressed: () {
// print('history button pressed');
// },
// icon: IconButton(
// onPressed: () {},
// icon: Icon(
// Icons.history,
// color: Colors.white,
// size: 15,
// ),
// ),
// ), //history navigation button
// IconButton(
// onPressed: () {
// print('profile button pressed');
// },
// icon: IconButton(
// onPressed: () {},
// icon: Icon(
// Icons.person,
// color: Colors.white,
// size: 15,
// ),
// ),
// ), //profile navigation button
// ],
// ),
// ),
// ),




// Padding(
//   padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
//   child: Container(
//     width: double.infinity,
//     height: 160,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(5),
//     ),
//     child: Padding(
//       padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
//       child: GoogleMap(
//         controller: _model.googleMapsController,
//         onCameraIdle: (latLng) =>
//             _model.googleMapsCenter = latLng,
//         initialLocation: _model.googleMapsCenter ??=
//             LatLng(30.0434, 31.2352),
//         markerColor: GoogleMarkerColor.blue,
//         mapType: MapType.normal,
//         style: GoogleMapStyle.aubergine,
//         initialZoom: 15,
//         allowInteraction: false,
//         allowZoom: false,
//         showZoomControls: false,
//         showLocation: true,
//         showCompass: false,
//         showMapToolbar: false,
//         showTraffic: false,
//         centerMapOnMarkerTap: true,
//       ),
//     ),
//   ),
// ), //google maps box