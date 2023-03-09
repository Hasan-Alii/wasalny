import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../shared/styles/colors.dart';



class DriverInfoScreen extends StatefulWidget {
  const DriverInfoScreen({Key? key}) : super(key: key);


  @override
  State<DriverInfoScreen> createState() => DriverInfoScreenState();
}

class DriverInfoScreenState extends State<DriverInfoScreen>
{

  final TextEditingController _seatController = TextEditingController(text: "1");
  int _seatCount = 1;

  void _incrementSeatCount() {
    setState(() {
      _seatCount = (_seatCount < 6) ? _seatCount + 1 : _seatCount;
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
          title: Text(
              'Driver Details'
          ),
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
                padding: const EdgeInsets.only(top: 8.0, left: 8, bottom: 8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: BorderDirectional(bottom: BorderSide(color: loginBlue))
                        ),
                        width: double.infinity,
                        child: Row(
                          children: [
                            Text(
                              'Meet the driver at station in ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: loginBlue,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      '   4   ',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '   min   ',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                AssetImage('assets/images/captian.jpg'),
                                radius: 35,
                              ),
                              Row(
                                children: [
                                  Text(
                                      '4.7 '
                                  ),
                                  Icon(Icons.star)
                                ],
                              ),

                            ],
                          ),
                          CircleAvatar(
                            backgroundImage:
                            AssetImage('assets/images/toyotacar.jpeg'),
                            radius: 35,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                          'ع د ج  3551'
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'Toyota Hiace 2021'
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color:loginBlue,
                        ),
                        child: FloatingActionButton.extended(
                          backgroundColor: loginBlue,
                          onPressed: (){},
                          label: Text(
                            "Confirm",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}