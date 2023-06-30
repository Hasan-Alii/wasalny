import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wasalny/screens_driver/maher%20screen.dart';
import 'driver_home_page.dart';
import 'rider1.dart';
import 'dart:async';


class BusStations extends StatelessWidget {
  final List<LatLng> latLng;
  final List<String> stationNames;
  List<dynamic> ticketslist;


  BusStations({
    required this.latLng,
    required this.stationNames,
    required this.ticketslist,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF040C4D),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('مسار الرحلة'),
      ),
      body: Column(
        children: [
          // Expanded(
          //     child: ListView.builder(
          //   itemCount: tickets.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     final item = tickets[index];
          //
          //     return Padding(
          //       padding: const EdgeInsets.all(10),
          //       child: Container(
          //         color: Colors.grey,
          //         child: Column(
          //           children: [
          //             Text('station name: ${item['station_name']}'),
          //             Text('status: ${item['status']}'),
          //             Text('tickets count: ${item['tickets_count']}'),
          //             Text('user id: ${item['user_id']}'),
          //           ],
          //         ),
          //       ),
          //     );
          //   },
          // ),
          // ),
          Expanded(
            child: ListView(
              children: this.stationNames.map((station) {
                return Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(32, 0 , 16, 0),
                        child: Image.asset(
                          'assets/images/PinLine.png',
                          scale: 7
                        ),
                      ),
                      Text(station,
                      style: TextStyle(fontSize: 16),),
                    ],
                  ),
                  color: Colors.white,
                );
              }).toList(),
            ),
          ),

          Container(
            width: double.infinity,
            color: Color(0xFF040C4D),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size.fromHeight(50)),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF040C4D)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  //   RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(30.0),
                  //     side: BorderSide(color: Color(0xFF040C4D), width: 2),
                  //   ),
                  // ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MaherScreen(tickets: ticketslist ,stations: stationNames, latLngcor: latLng)),
                  );
                },
                child: const Text(
                  'تسجيل الركاب',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
        ],
      ),

      // Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(10.0),
      //       child: Container(
      //         decoration: BoxDecoration(
      //             color: Colors.white70,
      //             borderRadius: BorderRadiusDirectional.circular(20)),
      //         child: Padding(
      //           padding: const EdgeInsets.all(12.0),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.end,
      //             children: [
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Icon(Icons.groups),
      //                   SizedBox(
      //                     width: 4,
      //                   ),
      //                   Text(
      //                     '16 راكب',
      //                     style: TextStyle(
      //                       fontSize: 20,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               Padding(
      //                 padding: const EdgeInsets.all(10.0),
      //                 child: Divider(
      //                   thickness: 5,
      //                 ),
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Icon(
      //                     Icons.pin_drop_outlined,
      //                     color: Colors.red,
      //                     size: 30,
      //                   ),
      //                   SizedBox(
      //                     width: 4,
      //                   ),
      //                   Expanded(
      //                     child: Text('',
      //                         style: TextStyle(
      //                             fontSize: 22, fontWeight: FontWeight.bold)),
      //                   ),
      //                   Text(
      //                     '07:30 am',
      //                     style: TextStyle(
      //                         fontSize: 18, fontWeight: FontWeight.bold),
      //                   ),
      //                 ],
      //               ),
      //               Divider(
      //                 thickness: 2,
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Icon(
      //                     Icons.arrow_circle_right_rounded,
      //                     color: Colors.green,
      //                   ),
      //                   SizedBox(
      //                     width: 4,
      //                   ),
      //                   Expanded(
      //                     child: Text('رابعة العدوية',
      //                         style: TextStyle(
      //                             fontSize: 20, fontWeight: FontWeight.bold)),
      //                   ),
      //                   Text(
      //                     '07:45 am',
      //                     style: TextStyle(
      //                         fontSize: 18, fontWeight: FontWeight.bold),
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(
      //                 height: 8,
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Icon(
      //                     Icons.arrow_circle_right_rounded,
      //                     color: Colors.green,
      //                   ),
      //                   SizedBox(
      //                     width: 4,
      //                   ),
      //                   Expanded(
      //                     child: Text('الحي السابع',
      //                         style: TextStyle(
      //                             fontSize: 20, fontWeight: FontWeight.bold)),
      //                   ),
      //                   Text(
      //                     '08:00 am',
      //                     style: TextStyle(
      //                         fontSize: 18, fontWeight: FontWeight.bold),
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(
      //                 height: 8,
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Icon(
      //                     Icons.arrow_circle_right_rounded,
      //                     color: Colors.green,
      //                   ),
      //                   SizedBox(
      //                     width: 4,
      //                   ),
      //                   Expanded(
      //                     child: Text('إنبي',
      //                         style: TextStyle(
      //                             fontSize: 20, fontWeight: FontWeight.bold)),
      //                   ),
      //                   Text(
      //                     '08:05 am',
      //                     style: TextStyle(
      //                         fontSize: 18, fontWeight: FontWeight.bold),
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(
      //                 height: 8,
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Icon(
      //                     Icons.arrow_circle_right_rounded,
      //                     color: Colors.green,
      //                   ),
      //                   SizedBox(
      //                     width: 4,
      //                   ),
      //                   Expanded(
      //                     child: Text('زهراء مدينة نصر',
      //                         style: TextStyle(
      //                             fontSize: 20, fontWeight: FontWeight.bold)),
      //                   ),
      //                   Text(
      //                     '08:15 am',
      //                     style: TextStyle(
      //                         fontSize: 18, fontWeight: FontWeight.bold),
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(
      //                 height: 8,
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Icon(
      //                     Icons.arrow_circle_right_rounded,
      //                     color: Colors.green,
      //                   ),
      //                   SizedBox(
      //                     width: 4,
      //                   ),
      //                   Expanded(
      //                     child: Text('أكاديمية الشرطة',
      //                         style: TextStyle(
      //                             fontSize: 20, fontWeight: FontWeight.bold)),
      //                   ),
      //                   Text(
      //                     '08:30 am',
      //                     style: TextStyle(
      //                         fontSize: 18, fontWeight: FontWeight.bold),
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(
      //                 height: 8,
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Icon(
      //                     Icons.arrow_circle_right_rounded,
      //                     color: Colors.green,
      //                   ),
      //                   SizedBox(
      //                     width: 4,
      //                   ),
      //                   Expanded(
      //                     child: Text('طريق السويس',
      //                         style: TextStyle(
      //                             fontSize: 20, fontWeight: FontWeight.bold)),
      //                   ),
      //                   Text(
      //                     '08:35 am',
      //                     style: TextStyle(
      //                         fontSize: 18, fontWeight: FontWeight.bold),
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(
      //                 height: 8,
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Icon(
      //                     Icons.arrow_circle_right_rounded,
      //                     color: Colors.green,
      //                   ),
      //                   SizedBox(
      //                     width: 4,
      //                   ),
      //                   Expanded(
      //                     child: Text('بوابة مدينتي 1',
      //                         style: TextStyle(
      //                             fontSize: 20, fontWeight: FontWeight.bold)),
      //                   ),
      //                   Text(
      //                     '08:50 am',
      //                     style: TextStyle(
      //                         fontSize: 18, fontWeight: FontWeight.bold),
      //                   ),
      //                 ],
      //               ),
      //               Divider(
      //                 thickness: 2,
      //               ),
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Icon(
      //                     Icons.pin_drop_outlined,
      //                     color: Color(0xFF040C4D),
      //                     size: 30,
      //                   ),
      //                   SizedBox(
      //                     width: 4,
      //                   ),
      //                   Expanded(
      //                     child: Text('الوجهة: أكاديمية الشروق',
      //                         style: TextStyle(
      //                             fontSize: 22, fontWeight: FontWeight.bold)),
      //                   ),
      //                   Text(
      //                     '09:00 am',
      //                     style: TextStyle(
      //                         fontSize: 18, fontWeight: FontWeight.bold),
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //     Center(
      //       child: ElevatedButton(
      //         style: ButtonStyle(
      //             backgroundColor:
      //                 MaterialStateProperty.all<Color>(Color(0xFF040C4D)),
      //             foregroundColor:
      //                 MaterialStateProperty.all<Color>(Colors.white),
      //             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      //                 RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(8.0),
      //               side: BorderSide(color: Color(0xFF040C4D), width: 2),
      //             ))),
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => Rider1()),
      //           );
      //         },
      //         child: const Text(
      //           'أبدأ الرحلة',
      //           style: TextStyle(fontSize: 25),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
