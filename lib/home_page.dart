import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:uber/settings_screen.dart';

import 'homePage.dart';

class NavBarWidget extends StatefulWidget {
  @override
  _NavBarWidget createState() => _NavBarWidget();
}

class _NavBarWidget extends State<NavBarWidget> {
  int _index = 0;
  String action = "Home";
    final List<Widget> _pages = [HomePage(),    SettingsPageWidget(),    SettingsPageWidget(),  ];

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }


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
          FloatingNavbarItem(
            icon: Icons.home,
            title: 'home',
          ),
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
      body: _pages[_index],
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