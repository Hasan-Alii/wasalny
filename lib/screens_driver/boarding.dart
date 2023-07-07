import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wasalny/screens_driver/map_page.dart';
import 'maher screen.dart';
import 'next_station.dart';

class Boarding extends StatefulWidget {
  final List<LatLng> latLng;
  final List<String> stationNames;
  List<dynamic> tickets;
  List<dynamic> newStaion = [];
  List<dynamic> newStaionss = [];

  Boarding({
    required this.latLng,
    required this.stationNames,
    required this.tickets,
    required this.newStaionss,
  });

  @override
  State<Boarding> createState() => _BoardingState();
}

class _BoardingState extends State<Boarding> {
  List<String> names = [
    'Ahmed Mohamed',
    'ziad amer',
    'Ziad Alaa',
    'amer',
    'Alaa'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for(int i=0; i<widget.tickets.length; i++){
     if(widget.tickets[i]['station_name'] == widget.newStaionss.first){
       widget.newStaion.add(widget.tickets[i]);
     }
    }

  }
  Widget build(BuildContext context) {
    bool _checkbox = false;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: BackButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Color(0xFF040C4D),
          title: Text('دخول الركاب'),
        ),
        body: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Expanded(
                  child: ListView.builder(
                    itemCount: widget.newStaion.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = widget.newStaion[index];
                      var name = '${item['user_id']}';
                      var code =
                          name.substring(name.length - 3, name.length - 1);
                      var name1 = names[index];
                      var count = widget.tickets.length;

                      return Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border:
                                Border.all(width: 1, color: Color(0xFF040C4D)),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          // height: 150,
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
                                          child: Icon(
                                            Icons.person,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                          backgroundColor: Color(0xFF040C4D),
                                          radius: 20,
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
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                width: 1,
                                                color: Color(0xFF040C4D)),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                          height: 50,
                                          width: double.infinity,
                                          child: MaterialButton(
                                            onPressed: () {
                                              setState(() {
                                                print(widget.newStaion[index]
                                                    ['status']);
                                                widget.newStaion[index]
                                                    ['status'] = 'notsigned';
                                                names.removeAt(index);
                                                widget.newStaion
                                                    .removeAt(index);
                                              });
                                            },
                                            child: Center(
                                              child: Text(
                                                'غير موجود',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xFF040C4D),
                                            border: Border.all(
                                                width: 1,
                                                color: Color(0xFF040C4D)),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5),
                                            ),
                                          ),
                                          height: 50,
                                          width: double.infinity,
                                          child: MaterialButton(
                                            onPressed: () {
                                              setState(() {
                                                print(widget.newStaion[index]
                                                    ['status']);
                                                widget.newStaion[index]
                                                    ['status'] = 'signed';
                                                names.removeAt(index);
                                                widget.newStaion
                                                    .removeAt(index);
                                              });
                                            },
                                            child: Center(
                                              child: Text(
                                                'تسجيل دخول',
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
                    },
                  ),
                ),
              ),
              Container(
                color: Color(0xFF040C4D),
                child: Padding(
                  padding: EdgeInsetsDirectional.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size.fromHeight(50)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF040C4D)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      // // if (names.isEmpty) {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => NextStation(
                      //           latLngList: widget.latLng,
                      //           stationsList: widget.stationNames,
                      //           ticketsList: widget.tickets,
                      //         ),
                      //       ));
                      // // }
                    },
                    child: Center(
                      child: Text(
                        'بدأ الرحلة',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ),
              )
            ]));
  }
}
