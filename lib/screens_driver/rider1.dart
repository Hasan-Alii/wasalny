import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wasalny/main.dart';
import 'package:wasalny/screens_driver/map_page.dart';
import 'package:wasalny/screens_driver/navigation_bar.dart';
import 'maher screen.dart';

class Rider1 extends StatefulWidget {
  List<dynamic> ticketsList;
  List<dynamic> newStationNames = [];

  Rider1({
    required this.ticketsList,
  });

  @override
  State<Rider1> createState() => _Rider1State();
}

class _Rider1State extends State<Rider1> {
  List<String> names = [
    'Ahmed Mohamed',
    'ziad amer',
    'Ziad Alaa',
    'amer',
    'Alaa',
    'hasan',
    'hussam',
    'hazem',
    'dalia',
    'manar',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for(int i=0; i<widget.ticketsList.length; i++){
      if(status[i] == '1'){
        widget.newStationNames.add(widget.ticketsList[i]);
      }
    }
  }

  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 0,
          leading: BackButton(
            color: Colors.transparent,
            onPressed: () {
            },
          ),
          backgroundColor: appRed,
          title: Center(child: Text('خروج الركاب')),
        ),
        body: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Expanded(
                  child: ListView.builder(
                    itemCount: widget.newStationNames.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = widget.newStationNames[index];
                      var name = '${item['user_id']}';
                      var code =
                          name.substring(name.length - 3, name.length - 1);
                      var name1 = names[index];
                      int seatNo = item['tickets_count'];
                      int fare = item['fare'];
                      var total = fare;
                      // fare*seatNo;
                      var count = widget.newStationNames.length;
                      // FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                      //   future: FirebaseFirestore.instance
                      //       .collection('users')
                      //       .doc(item[index])
                      //       .get(),
                      //   builder: (_, snapshot) {
                      //     if (snapshot.hasData) {
                      //       var data = snapshot.data!.data();
                      //       var value = data!['first_name'];
                      //       name = value;
                      //       return Text(value);
                      //     }
                      //     return const Text('User');
                      //   },
                      // );

                      return Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(width: 2, color: Colors.black),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.black,
                                          radius: 21.5,
                                          child: CircleAvatar(
                                            child: Icon(
                                              Icons.person,
                                              color: Colors.black,
                                              size: 20,
                                            ),
                                            backgroundColor: Colors.white,
                                            radius: 20,

                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 16, 0, 16),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '${name1}',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 16,
                                                    ),
                                                    // softWrap: false,
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons
                                                      .airline_seat_recline_normal,
                                                  color: Colors.black,
                                                ),
                                                Text(
                                                  'عدد المقاعد ${item['tickets_count']}   |',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'كاش ',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey[600],
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                          height: 45,
                                          width: 45,
                                          child: Center(
                                            child: Text(
                                              '$code',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(height: 4,),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: Row(
                                    children: [
                                      // Expanded(
                                      //   child: Container(
                                      //     decoration: BoxDecoration(
                                      //       color: Colors.white,
                                      //       border: Border.all(
                                      //           width: 1,
                                      //           color: Color(0xFF040C4D)
                                      //       ),
                                      //       borderRadius: BorderRadius.all(Radius.circular(5),
                                      //       ),
                                      //     ),
                                      //     height: 50,
                                      //     width: double.infinity,
                                      //     child: MaterialButton(
                                      //       onPressed: () {
                                      //         setState(() {
                                      //           print(widget.ticketsList[index]['status']);
                                      //           widget.ticketsList[index]['status']='not_signed';
                                      //           names.removeAt(index);
                                      //           widget.ticketsList.removeAt(index);
                                      //         });},
                                      //       child: Center(
                                      //         child: Text(
                                      //           'غير موجود',
                                      //           style: TextStyle(
                                      //               color: Colors.black),
                                      //         ),
                                      //       ),
                                      //     ),
                                      //   ),
                                      // ),
                                      // SizedBox(
                                      //   width: 10,
                                      // ),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFFF12929),
                                            border: Border.all(
                                                width: 1,
                                                color: appRed),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                          height: 50,
                                          width: double.infinity,
                                          child: MaterialButton(
                                            onPressed: () {
                                              setState(() {
                                                showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return AlertDialog(
                                                        title: Row(
                                                          children: [
                                                            CircleAvatar(
                                                              child: Icon(
                                                                Icons.person,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Text(
                                                              name1,
                                                              style: TextStyle(
                                                                  fontSize: 15),
                                                            ),
                                                            SizedBox(
                                                              width: 50,
                                                            ),
                                                            Container(
                                                              height: 30,
                                                              width: 30,
                                                              color: Colors
                                                                  .grey[700],
                                                              child: Center(
                                                                child: Text(
                                                                  '$code',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        content: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            Row(
                                                              children: [
                                                                Text(
                                                                  '$seatNo',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                                Expanded(
                                                                    child:
                                                                        Container()),
                                                                Text(
                                                                  'عدد الكراسي',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            Row(
                                                              children: [
                                                                Text(
                                                                  '$fare',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                                Expanded(
                                                                    child:
                                                                        Container()),
                                                                Text(
                                                                  'تكلفة الرحلة',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 40,
                                                            ),
                                                            Container(
                                                                height: 1,
                                                                width: double
                                                                    .infinity,
                                                                color: Colors
                                                                    .grey),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            Row(
                                                              children: [
                                                                Text(
                                                                  '$total ج.م',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                                Expanded(
                                                                    child:
                                                                        Container()),
                                                                Text(
                                                                  'التكلفة الإجمالية',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          15),
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            Row(
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Container(
                                                                    height: 50,
                                                                    width: double
                                                                        .infinity,
                                                                    color: Colors
                                                                        .black87,
                                                                    child:
                                                                        MaterialButton(
                                                                      onPressed:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          names.removeAt(
                                                                              index);
                                                                          widget
                                                                              .newStationNames
                                                                              .removeAt(index);
                                                                        });
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Text(
                                                                          'تحصيل الأجرة',
                                                                          style:
                                                                              TextStyle(color: Colors.white,fontSize: 18),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      );
                                                    });
                                              });
                                            },
                                            child: Center(
                                              child: Text(
                                                'تسجيل خروج',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                      // return Padding(
                      //   padding: const EdgeInsets.all(10),
                      //   child: Container(
                      //     color: Colors.grey,
                      //     child: Column(
                      //       children: [
                      //         Text('station name: ${item['station_name']}'),
                      //         Text('status: ${item['status']}'),
                      //         Text('tickets count: ${item['tickets_count']}'),
                      //         Text('user id: ${item['user_id']}'),
                      //       ],
                      //     ),
                      //   ),
                      // );
                    },
                  ),
                ),
              ),
              Container(
                color: appRed,
                child: Padding(
                  padding: EdgeInsetsDirectional.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size.fromHeight(50)),
                      backgroundColor: MaterialStateProperty.all<Color>(appRed),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      if (names.isEmpty || widget.newStationNames.isEmpty) {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context){
                          return NavBarWidget();
                        }), (r){
                          return false;
                        });
                      }
                    },
                    child: Center(
                      child: Text(
                        'إنهاء الرحلة',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ),
            ]));
  }
}

Color appRed =Colors.red ;
