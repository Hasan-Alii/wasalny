import 'dart:async';
import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:location/location.dart';
import 'driver_home_page.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_polyline_points/src/utils/polyline_result.dart';
import 'package:flutter_polyline_points/src/utils/polyline_waypoint.dart';
import 'package:flutter_polyline_points/src/PointLatLng.dart';
import 'package:url_launcher/url_launcher.dart';




const double CAMERA_ZOOM = 13;
const double CAMERA_TILT = 0;
const double CAMERA_BEARING = 30;
const LatLng SOURCE_LOCATION = LatLng(30.067503427090212, 31.324826613070474);
const LatLng DEST_LOCATION = LatLng(30.11917515627577, 31.60457576748187);
const String ApiKey = "AIzaSyBsvJqB3uxl_HysQ_DAOGsl7TQ2ZblnDpk";

class MapPage extends StatefulWidget {
  final List<String> stations;
  final List<LatLng> latlngcor;

  MapPage(
    this.stations,
    this.latlngcor,
  );


  @override
  State<MapPage> createState() => MapPageState();
}

class MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();

  //on below line we have set the camera position
  static const CameraPosition _kGoogle = CameraPosition(
    target: LatLng(30.06930, 31.34411),
    zoom: 12,
  );

  final Set<Marker> _markers = {};
  final Set<Polyline> _polyline = {};

  // list of locations to display polylines
  List<LatLng> latLen = [
    LatLng(30.067503427090212, 31.324826613070474), //rabaa
    LatLng(30.043288887831523, 31.329029226250476), //sabe3
    LatLng(30.0446912736241, 31.340165758069716), //enppi
    LatLng(30.050509612656448, 31.39272525465789), //zahraa
    LatLng(30.051890425672394, 31.409979795418646), //police academy
    LatLng(30.101364719252658, 31.575168027563194), //karta suez rd
    LatLng(30.10290550944613, 31.61119545941037), //madinty 1
    LatLng(30.11365324336785, 31.60583104131437), //CS & mass comm
    LatLng(30.11744901160826, 31.605058565127607), //BUE
    LatLng(30.11917515627577, 31.60457576748187), //SHA
  ];
  int counter = 0; //عشان حازم ميزعلش


  List<LatLng> polylineCoordinates = [];

  void getPolylinePoints() async{

    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      ApiKey,
      PointLatLng(latLen[0].latitude, latLen[0].latitude),
      PointLatLng(latLen[1].latitude, latLen[1].latitude),
    );

    if(result.points.isNotEmpty){
      result.points.forEach((PointLatLng point) =>
        polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {
        print(polylineCoordinates);
      });
    }
  }


  @override
  void initState() {
    getPolylinePoints();
    // TODO: implement initState
    super.initState();

    // declared for loop for various locations
    for (int i = 0; i < widget.latlngcor.length; i++) {
      counter++;
      _markers.add(
          // added markers
          Marker(
        markerId: MarkerId(i.toString()),
        position: widget.latlngcor[i],
        infoWindow: InfoWindow(
            title: widget.stations[i],
            snippet: 'Station no. ${i+1}',
            onTap: (){},
            // onTap: () {
            //   showDialog(
            //       context: context,
            //       builder: (context) {
            //         return AlertDialog(
            //           title: Text('Trip info'),
            //           content: Column(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               Text(
            //                 'Driver name: Hazem El Tiaaaaaar',
            //                 style: style1,
            //               ),
            //               SizedBox(
            //                 height: 20,
            //               ),
            //               Text('Time to station: 08:00', style: style1),
            //               SizedBox(
            //                 height: 20,
            //               ),
            //               Text('Time to destination: 08:00', style: style1),
            //               SizedBox(
            //                 height: 20,
            //               ),
            //               Text('Fare: ${(counter - i) * 2} EGP', style: style1),
            //               SizedBox(
            //                 height: 20,
            //               ),
            //               Row(
            //                 children: [
            //                   Expanded(
            //                     child: Container(
            //                       height: 50,
            //                       width: double.infinity,
            //                       decoration: BoxDecoration(
            //                         color: Colors.green,
            //                       ),
            //                       child: MaterialButton(
            //                         onPressed: () {
            //                           ////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //                           showDialog(
            //                               context: context,
            //                               builder: (context) {
            //                                 return AlertDialog(
            //                                   title: Text(
            //                                       'REQUEST CONFIRMED SUCCEFULLY :( !!!!!!'),
            //                                   content: Row(
            //                                     children: [
            //                                       Expanded(
            //                                         child: Container(
            //                                           height: 50,
            //                                           width: double.infinity,
            //                                           decoration: BoxDecoration(
            //                                             color: Colors.green,
            //                                           ),
            //                                           child: MaterialButton(
            //                                             onPressed: () {
            //                                               Navigator.pop(
            //                                                   context);
            //                                             },
            //                                             child: Center(
            //                                               child: Text(
            //                                                 'OK',
            //                                                 style: TextStyle(
            //                                                     color: Colors
            //                                                         .white),
            //                                               ),
            //                                             ),
            //                                           ),
            //                                         ),
            //                                       ),
            //                                     ],
            //                                   ),
            //                                 );
            //                               });
            //                         },
            //                         child: Center(
            //                           child: Text(
            //                             'Confirm',
            //                             style: TextStyle(color: Colors.white),
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     width: 20,
            //                   ),
            //                   Expanded(
            //                     child: Container(
            //                       height: 50,
            //                       width: double.infinity,
            //                       decoration: BoxDecoration(
            //                         color: Colors.red,
            //                       ),
            //                       child: MaterialButton(
            //                         onPressed: () {},
            //                         child: Center(
            //                           child: Text(
            //                             'Cancel',
            //                             style: TextStyle(color: Colors.white),
            //                           ),
            //                         ),
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         );
            //       });
            // }
            ),
        icon: BitmapDescriptor.defaultMarker,
      ));
      setState(() {});
      _polyline.add(Polyline(
          polylineId: PolylineId('1'),
          points: widget.latlngcor,
          color: Colors.black,
          width: 4));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0F9D58),
        // title of app
        title: Text("Trip Stations"),
      ),
      body: Container(
        child: SafeArea(
          child: GoogleMap(
            //given camera position
            initialCameraPosition: _kGoogle,
            // on below line we have given map type
            mapType: MapType.normal,
            // specified set of markers below
            markers: _markers,
            // on below line we have enabled location
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            // on below line we have enabled compass location
            compassEnabled: true,
            // on below line we have added polylines
            // polylines: _polyline,
            polylines: {
              Polyline(
                polylineId: PolylineId("route"),
                points: polylineCoordinates,
                color: Colors.black,
              ),
            },
            // displayed google map
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
      ),
    );
  }
}

TextStyle style1 = TextStyle(fontSize: 20, color: Colors.black);
