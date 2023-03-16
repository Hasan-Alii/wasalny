import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../shared/styles/colors.dart';

class BookTripScreen extends StatefulWidget {
  const BookTripScreen({Key? key}) : super(key: key);


  @override
  State<BookTripScreen> createState() => _BookTripScreenState();
}

class _BookTripScreenState extends State<BookTripScreen>
{

  final TextEditingController _seatController = TextEditingController(text: "1");
  int _seatCount = 1;

  void _incrementSeatCount() {
    setState(() {
      _seatCount = (_seatCount < 2) ? _seatCount + 1 : _seatCount;
      _seatController.text = _seatCount.toString();
    });
  }
  void _decrementSeatCount() {
    setState(() {
      _seatCount = (_seatCount > 1) ? _seatCount - 1 : _seatCount;
      _seatController.text = _seatCount.toString();
    });
  }

  @override
  void dispose() {
    _seatController.dispose();
    super.dispose();
  }

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  final Completer<GoogleMapController> _controllerGoogleMap =
  Completer<GoogleMapController>();

  late GoogleMapController newGoogleMapController;

  //get user current location
  late Position currentPos;
  var geoLocator = Geolocator();

  double bottomPaddingOfMap = 0;

  void locatePos() async
  {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    currentPos = position;

    //latitude and longitude
    LatLng latLngPos = LatLng(position.latitude, position.longitude);

    //change camera position while user moves
    CameraPosition cameraPosition = new CameraPosition(target: latLngPos, zoom: 14);
    newGoogleMapController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }


  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission().then((value){
    }).onError((error, stackTrace) async {
      await Geolocator.requestPermission();
      print("ERROR"+error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: loginBlue,
          elevation: 50.0,
          leading: IconButton(
            onPressed: ()
            {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_outlined, color: Colors.white, size: 30.0,),
          )
      ),
      body: Stack(
        children: [
          GoogleMap(
            padding: EdgeInsets.only(bottom: bottomPaddingOfMap),
            mapType: MapType.normal,
            myLocationButtonEnabled: true,

            // Blue dot for current location
            myLocationEnabled: true,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: false,

            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller)
            {
              setState(() {
                bottomPaddingOfMap = 300.0;
              });

              _controllerGoogleMap.complete(controller);
              newGoogleMapController = controller;

              getUserCurrentLocation();
            },

          ),

          // on pressing floating action button the camera will take to user current location

          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Container(
              height: 334.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 33.0, left: 16, bottom: 24.0),
                child: Column(
                  children: [
                    Container(
                      height: 49.0,
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only( right: 8.0),
                              child: Container(
                                width: 190.0,
                                height: 49.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F1F1),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0,right: 10.0),
                                      child: Icon(
                                        Icons.monetization_on,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Text("Cash"),
                                    SizedBox(width: 50.0,),
                                    Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Container(
                                width: 190.0,
                                height: 49.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F1F1),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      onPressed: _decrementSeatCount,
                                      icon: Icon(
                                        FontAwesomeIcons.minus,
                                        color: _seatCount == 1 ? Colors.red : Color(0xFFB0B0B0),
                                      ),
                                    ),
                                    Container(
                                      width: 75,
                                      child: TextField(
                                        controller: _seatController,
                                        textAlign: TextAlign.center,
                                        readOnly: true,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                        ),
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(vertical: 8),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: _incrementSeatCount,
                                      icon: Icon(
                                        FontAwesomeIcons.plus,
                                        color: _seatCount < 2 ? Color(0xFFB0B0B0) : Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0, top: 24.0,bottom: 15.0),
                      child: Container(
                        height: 48.0,
                        width: 396.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          color: Color(0xFFF1F1F1),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10.0,),
                            Expanded(
                              child: Text(
                                "Fare",
                                style: TextStyle(
                                  color: Color(0xFF040C4D),
                                ),
                              ),
                            ),
                            SizedBox(width: 220.0,),
                            Expanded(
                              child: Text(
                                "17 EGP",
                                style: TextStyle(
                                  color: Color(0xFF040C4D),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ),
                    ),
                    Text(
                      "You can cancel before 06:11 am on 12 Dec to get a full refund",
                      style: TextStyle(
                        color: Color(0xFFA4A5AA),
                        fontSize: 12.0,
                        fontFamily: "Arial",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(flex: 1,),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 24.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(114.0),
                          color:loginBlue,
                        ),
                        width: 363.0,
                        height: 57.0,
                        child: FloatingActionButton.extended(
                          backgroundColor: loginBlue,
                          onPressed: (){},
                          label: Text(
                            "Book",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.2,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}