// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wasalny/screens_driver/bus_stations.dart';
import 'package:wasalny/screens_driver/rider1.dart';
import 'driver_home_page.dart';
import 'day_of_month.dart';

class DriverRequestCard extends StatelessWidget {
  final String tripEnd;
  final String tripStart;
  final String startPoint;
  final String endPoint;
  final List<LatLng> latLngList;
  final List<String> stationNamesList;
  List<dynamic> ticketsList;


  DriverRequestCard({
    required this.tripEnd,
    required this.tripStart,
    required this.startPoint,
    required this.endPoint,
    required this.latLngList,
    required this.stationNamesList,
    required this.ticketsList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.all(10),
      child: Center(
        child: Card(
          child: Container(
            width: double.infinity,
            // height: 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              shape: BoxShape.rectangle,
              boxShadow: const [
                BoxShadow(
                    blurStyle: BlurStyle.solid,
                    blurRadius: 8,
                    spreadRadius: 2,
                    color: Color(0x33000000),
                    offset: Offset(0, 0))
              ],
            ),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              '${tripStart}',
                              // DateFormat('hh:mm aa')
                              //     .format(DateTime.now()),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'تنتهي في $tripEnd',
                            // DateFormat('hh:mm').format(
                            //   DayOfMonth()
                            //       .addHourAndMinute(1, 30),
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 20, 0, 20),
                          child: Image.asset(
                            'assets/images/PinBus.png',
                            color: const Color(0xFF040C4D),
                            width: 70,
                            height: 70,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('$startPoint'),
                            SizedBox(height: 40),
                            Text('$endPoint'),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16, 0, 8, 0),
                            child: TextButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          const Color(0xFF040C4D)),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          const Color(0xFF10462E)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: const BorderSide(
                                        color: Color(0xFF03093A), width: 2),
                                  ))),
                              child: const Text(
                                'تأكيد الرحلة',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BusStations(tickets: ticketsList ,stationNames: stationNamesList, latLng: latLngList,),
                                  ),
                                );
                              },
                            ),
                          ),
                        ), //زرار تأكيد الرحلة
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
