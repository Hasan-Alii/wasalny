// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'rider1.dart';
import 'package:intl/intl.dart';
import 'day_of_month.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'driver_request_card.dart';
import 'driver_request.dart';

class DriverHomePage extends StatefulWidget {
  const DriverHomePage({super.key});

  @override
  State<DriverHomePage> createState() => _DriverHomePageState();
}

// class BusRoutes extends StatelessWidget {
//   const BusRoutes({super.key});
//
// //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white70,
//       appBar: AppBar(
//         backgroundColor: Color(0xFF040C4D),
//         leading: BackButton(
//           color: Colors.white,
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => DriverHomePage()),
//             );
//           },
//         ),
//         title: const Text('مسار الرحلة'),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: Colors.white70,
//                   borderRadius: BorderRadiusDirectional.circular(20)),
//               child: Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(Icons.groups),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Text(
//                           '16 راكب',
//                           style: TextStyle(
//                             fontSize: 20,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: Divider(
//                         thickness: 5,
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(
//                           Icons.pin_drop_outlined,
//                           color: Colors.red,
//                           size: 30,
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Text('',
//                               style: TextStyle(
//                                   fontSize: 22, fontWeight: FontWeight.bold)),
//                         ),
//                         Text(
//                           '07:30 am',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                     Divider(
//                       thickness: 2,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(
//                           Icons.arrow_circle_right_rounded,
//                           color: Colors.green,
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Text('رابعة العدوية',
//                               style: TextStyle(
//                                   fontSize: 20, fontWeight: FontWeight.bold)),
//                         ),
//                         Text(
//                           '07:45 am',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(
//                           Icons.arrow_circle_right_rounded,
//                           color: Colors.green,
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Text('الحي السابع',
//                               style: TextStyle(
//                                   fontSize: 20, fontWeight: FontWeight.bold)),
//                         ),
//                         Text(
//                           '08:00 am',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(
//                           Icons.arrow_circle_right_rounded,
//                           color: Colors.green,
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Text('إنبي',
//                               style: TextStyle(
//                                   fontSize: 20, fontWeight: FontWeight.bold)),
//                         ),
//                         Text(
//                           '08:05 am',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(
//                           Icons.arrow_circle_right_rounded,
//                           color: Colors.green,
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Text('زهراء مدينة نصر',
//                               style: TextStyle(
//                                   fontSize: 20, fontWeight: FontWeight.bold)),
//                         ),
//                         Text(
//                           '08:15 am',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(
//                           Icons.arrow_circle_right_rounded,
//                           color: Colors.green,
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Text('أكاديمية الشرطة',
//                               style: TextStyle(
//                                   fontSize: 20, fontWeight: FontWeight.bold)),
//                         ),
//                         Text(
//                           '08:30 am',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(
//                           Icons.arrow_circle_right_rounded,
//                           color: Colors.green,
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Text('طريق السويس',
//                               style: TextStyle(
//                                   fontSize: 20, fontWeight: FontWeight.bold)),
//                         ),
//                         Text(
//                           '08:35 am',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(
//                           Icons.arrow_circle_right_rounded,
//                           color: Colors.green,
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Text('بوابة مدينتي 1',
//                               style: TextStyle(
//                                   fontSize: 20, fontWeight: FontWeight.bold)),
//                         ),
//                         Text(
//                           '08:50 am',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                     Divider(
//                       thickness: 2,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(
//                           Icons.pin_drop_outlined,
//                           color: Color(0xFF040C4D),
//                           size: 30,
//                         ),
//                         SizedBox(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Text('الوجهة: أكاديمية الشروق',
//                               style: TextStyle(
//                                   fontSize: 22, fontWeight: FontWeight.bold)),
//                         ),
//                         Text(
//                           '09:00 am',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Center(
//             child: ElevatedButton(
//               style: ButtonStyle(
//                   backgroundColor:
//                       MaterialStateProperty.all<Color>(Color(0xFF040C4D)),
//                   foregroundColor:
//                       MaterialStateProperty.all<Color>(Colors.white),
//                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                     side: BorderSide(color: Color(0xFF040C4D), width: 2),
//                   ))),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Rider1()),
//                 );
//               },
//               child: const Text(
//                 'أبدأ الرحلة',
//                 style: TextStyle(fontSize: 25),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
/////////////////////////////////////////////////  THE BUS ROUTE SCREEN  ////////////////////////////////////////////////

class _DriverHomePageState extends State<DriverHomePage> {
  // DateTime now = DateTime.now();
  // late DateTime lastDayOfMonth = DateTime(
  //   DateTime.now().year,
  //   DateTime.now().month,
  //   DateTime.now().day,
  // );
  // final currentDate = DateTime.now().day;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 0,
        length: 1,
        child: Scaffold(
          backgroundColor: Colors.white,
          // blueGrey[50],
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "!أهلا بك",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            backgroundColor: Color(0xFF040C4D),
            bottom: TabBar(
              indicatorWeight: 3,
              indicatorColor: Colors.yellow,
              labelColor: Colors.white,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              unselectedLabelColor: Colors.white70,
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    DateFormat('EEEE dd/MM').format(
                      DayOfMonth().addDay(0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // StreamBuilder<QuerySnapshot>(
              //     stream: DriverTrips.getTripsStream(),
              //     builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              //       if (snapshot.hasError) {
              //         return Text('Error: ${snapshot.error}');
              //       }
              //       if (!snapshot.hasData) {
              //         return const Text('Loading...');
              //       }
              //       return ListView(
              //         children: snapshot.data!.docs
              //             .map((DocumentSnapshot document) =>
              //             DriverRequestCard(
              //               // seats: document['seats'] as String,
              //               tripEnd: document['tripEnd'] as String,
              //               tripStart: document['tripTime'] as String,
              //               // routeNo: document['routeNo'] as _JsonDocumentReference,
              //             ))
              //             .toList(),
              //       );
              //     }
              // ),

              StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('trip')
                    // .where('tripTime' as DateTime, isEqualTo: DateTime.now().year)
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> tripsSnapshot) {
                  if (tripsSnapshot.hasError) {
                    // Handle the error
                    if (tripsSnapshot.error
                        .toString()
                        .contains('Failed assertion')) {
                      // Handle the 'in' filter error specifically
                      return const Text(
                          'Error: Empty list passed to "whereIn" query');
                    } else {
                      return Text('Error: ${tripsSnapshot.error}');
                    }
                  }
                  if (tripsSnapshot.connectionState ==
                      ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  if (tripsSnapshot.data == null ||
                      tripsSnapshot.data!.docs.isEmpty) {
                    return const Text(
                        'No trips found for this university.' // Display a message when no trips are found
                        );
                  }

                  return ListView.builder(
                    itemCount: tripsSnapshot.data!.docs.length,
                    itemBuilder: (BuildContext context, int index) {
                      DocumentSnapshot document =
                          tripsSnapshot.data!.docs[index];
                      String tripStart = document['tripTime'];
                      String tripEnd = document['tripEnd'];
                      DocumentReference busRef = document['bus'];

                      // Retrieve the route document
                      DocumentReference routeRef = document['routeNo'];
                      return FutureBuilder<DocumentSnapshot>(
                        future: routeRef.get(),
                        builder: (BuildContext context,
                            AsyncSnapshot<DocumentSnapshot> routeSnapshot) {
                          if (routeSnapshot.hasError) {
                            return Text('Error: ${routeSnapshot.error}');
                          }
                          if (routeSnapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const CircularProgressIndicator();
                          }
                          List<DocumentReference> stationRefs = routeSnapshot
                              .data!['stationRefs']
                              .cast<DocumentReference>();

                          // Retrieve the bus document
                          return FutureBuilder<DocumentSnapshot>(
                            future: busRef.get(),
                            builder: (BuildContext context,
                                AsyncSnapshot<DocumentSnapshot> busSnapshot) {
                              if (busSnapshot.hasError) {
                                return Text('Error: ${busSnapshot.error}');
                              }
                              if (busSnapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const CircularProgressIndicator();
                              }
                              String busNo = busSnapshot.data!['busID'];

                              // Use the retrieved stationRefs to access station documents
                              return FutureBuilder<List<DocumentSnapshot>>(
                                future: Future.wait(stationRefs
                                    .map((stationRef) => stationRef.get())),
                                builder: (BuildContext context,
                                    AsyncSnapshot<List<DocumentSnapshot>>
                                        stationSnapshots) {
                                  if (stationSnapshots.hasError) {
                                    return Text(
                                        'Error: ${stationSnapshots.error}');
                                  }
                                  if (stationSnapshots.connectionState ==
                                      ConnectionState.waiting) {
                                    return const CircularProgressIndicator();
                                  }

                                  // Extract station names from station documents
                                  List<String> stationNames = stationSnapshots
                                      .data!
                                      .map((stationSnapshot) =>
                                          stationSnapshot['stationName'])
                                      .cast<String>()
                                      .toList();

                                  // latLngList = [];
                                  // Extract latitude and longitude from station documents
                                  List<LatLng> latLngList =
                                      stationSnapshots.data!
                                          .map((stationSnapshot) => LatLng(
                                                stationSnapshot['location']
                                                    .latitude, // Retrieve latitude
                                                stationSnapshot['location']
                                                    .longitude, // Retrieve longitude
                                              ))
                                          .toList();

                                  return DriverRequestCard(
                                    stationNamesList: stationNames,
                                    latLngList: latLngList,
                                    tripStart: tripStart,
                                    tripEnd: tripEnd,
                                    startPoint: stationNames.isNotEmpty
                                        ? stationNames.first
                                        : 'Unknown',
                                    endPoint: stationNames.isNotEmpty
                                        ? stationNames.last
                                        : 'Unknown',
                                  );
                                },
                              );
                            },
                          );
                        },
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

/////////////////////////////////////////////  THE MAIN DRIVER SCREEN  ////////////////////////////////////////////////////
