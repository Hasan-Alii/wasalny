import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'driver_home_page.dart';
import 'rider1.dart';

class BusStations extends StatelessWidget {
  final List<LatLng> latLng;
  final List<String> stationNames;

  BusStations({
    required this.latLng,
    required this.stationNames,
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DriverHomePage()),
            );
          },
        ),
        title: const Text('مسار الرحلة'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: this.stationNames.map((station) {
                  return Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.pin_drop_outlined,
                          color: Colors.red,
                          size: 30,
                        ),
                        Text(station),
                      ],
                    ),
                    padding: EdgeInsets.all(15),
                    color: Colors.white,
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(300, 60)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF040C4D)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Color(0xFF040C4D), width: 2),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Rider1()),
                    );
                  },
                  child: const Text(
                    'أبدأ الرحلة',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
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
