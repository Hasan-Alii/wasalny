import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'maher_screen.dart';


class Rider1 extends StatelessWidget {
  final List<LatLng> latLngList;
  final List<String> stationNamesList;
  List<dynamic> ticketsList;

  Rider1({
    required this.latLngList,
    required this.stationNamesList,
    required this.ticketsList,
  });

  @override
  Widget build(BuildContext context) {
    bool _checkbox = false;
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text('دخول الركاب')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: ticketsList.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = ticketsList[index];
                      var name = '${item['user_id']}';
                      var code = name.substring(name.length - 3);

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
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 150,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 70),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                          const EdgeInsets.only(
                                              bottom: 22),
                                          child: Text(
                                            '${name}',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                            // softWrap: false,
                                            maxLines: 1,
                                            overflow:
                                            TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Padding(
                                          padding:
                                          const EdgeInsets.only(
                                              top: 7),
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            color: Colors.grey[600],
                                            child: Center(
                                              child: Text(
                                                '$code',
                                                style: TextStyle(
                                                    color:
                                                    Colors.white),
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 60, bottom: 74),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.airline_seat_recline_normal,
                                    color: Colors.black,
                                  ),
                                  Text(
                                    'عدد المقاعد ${item['tickets_count']}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'كاش',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 60, left: 10, right: 10),
                              child: Container(
                                height: 1,
                                width: double.infinity,
                                color: Colors.grey[300],
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    width: double.infinity,
                                    color: Colors.redAccent,
                                    child: MaterialButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text(
                                                    'هل انت متأكد ان هذا الراكب غير موجود؟'),
                                                content: Row(
                                                  children: [
                                                    Expanded(
                                                      child:
                                                      Container(
                                                        height: 50,
                                                        width: double
                                                            .infinity,
                                                        decoration:
                                                        BoxDecoration(
                                                          color: Colors
                                                              .red,
                                                        ),
                                                        child:
                                                        MaterialButton(
                                                          onPressed:
                                                              () {},
                                                          child:
                                                          Center(
                                                            child:
                                                            Text(
                                                              'الغاء',
                                                              style: TextStyle(
                                                                  color:
                                                                  Colors.white),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Expanded(
                                                      child:
                                                      Container(
                                                        height: 50,
                                                        width: double
                                                            .infinity,
                                                        decoration:
                                                        BoxDecoration(
                                                          color: Colors
                                                              .green,
                                                        ),
                                                        child:
                                                        MaterialButton(
                                                          onPressed:
                                                              () {},
                                                          child:
                                                          Center(
                                                            child:
                                                            Text(
                                                              'تأكيد',
                                                              style: TextStyle(
                                                                  color:
                                                                  Colors.white),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child: Center(
                                        child: Text(
                                          'غير موجود',
                                          style: TextStyle(
                                              color: Colors.white),
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
                                    height: 50,
                                    width: double.infinity,
                                    color: Colors.blue,
                                    child: MaterialButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text(
                                                    'هل انت متأكد انك تريد تسجيل دخول هذا الراكب؟'),
                                                content: Row(
                                                  children: [
                                                    Expanded(
                                                      child:
                                                      Container(
                                                        height: 50,
                                                        width: double
                                                            .infinity,
                                                        decoration:
                                                        BoxDecoration(
                                                          color: Colors
                                                              .red,
                                                        ),
                                                        child:
                                                        MaterialButton(
                                                          onPressed:
                                                              () {},
                                                          child:
                                                          Center(
                                                            child:
                                                            Text(
                                                              'الغاء',
                                                              style: TextStyle(
                                                                  color:
                                                                  Colors.white),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Expanded(
                                                      child:
                                                      Container(
                                                        height: 50,
                                                        width: double
                                                            .infinity,
                                                        decoration:
                                                        BoxDecoration(
                                                          color: Colors
                                                              .blue,
                                                        ),
                                                        child:
                                                        MaterialButton(
                                                          onPressed:
                                                              () {
                                                            Navigator
                                                                .push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) =>
                                                                      MaherScreen()),
                                                            );
                                                          },
                                                          child:
                                                          Center(
                                                            child:
                                                            Text(
                                                              'تأكيد',
                                                              style: TextStyle(
                                                                  color:
                                                                  Colors.white),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
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
                          ],
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
              ]
              // [
              //   Text('هذه المحطة',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              //   SizedBox(height: 20,),
              //   Stack(
              //     alignment: Alignment.bottomCenter,
              //     children:
              //     [
              //       Container(
              //         height: 150,
              //         width: MediaQuery.of(context).size.width,
              //         color: Colors.white,
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Padding(
              //             padding: const EdgeInsets.only(bottom: 70),
              //             child: Row(
              //               children: [
              //                 CircleAvatar(
              //                   child: Icon(Icons.person,color: Colors.white,),
              //                 ),
              //                 SizedBox(width: 10,),
              //                 Padding(
              //                   padding: const EdgeInsets.only(bottom: 22),
              //                   child: Text('محمد',style: TextStyle(
              //                     color: Colors.black,fontSize: 14,
              //                   ),),
              //                 ),
              //                 Expanded(child: Container()),
              //                 Padding(
              //                     padding: const EdgeInsets.only(top: 7),
              //                     child: Container(
              //                       height: 50,
              //                       width: 50,
              //                       color: Colors.grey[600],
              //                       child: Center(child: Text('1',style: TextStyle(color: Colors.white),),),
              //                     )
              //                 )
              //
              //               ],
              //             ),
              //           ),),),
              //       Padding(
              //         padding: const EdgeInsets.only(left: 60,bottom:74),
              //         child: Row(
              //           children:
              //           [
              //             Icon(Icons.airline_seat_recline_normal,color: Colors.black,),
              //             Text('عدد المقاعد 1',style: TextStyle(
              //               color: Colors.black,fontSize: 13,
              //             ),),
              //             Text('كاش',style: TextStyle(
              //               color: Colors.black,fontSize: 13,
              //             ),),
              //           ],
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.only(bottom: 60,left: 10,right: 10),
              //         child: Container(
              //           height: 1,
              //           width: double.infinity,
              //           color: Colors.grey[300],
              //         ),
              //       ),
              //       Row(
              //         children:
              //         [
              //           Expanded(
              //             child: Container(
              //               height: 50,
              //               width: double.infinity,
              //               color: Colors.redAccent,
              //               child: MaterialButton(onPressed:()
              //               {
              //                 showDialog(context: context, builder: (context)
              //                 {
              //                   return AlertDialog(title: Text('هل انت متأكد ان هذا الراكب غير موجود؟'),
              //                     content: Row(
              //                       children: [
              //                         Expanded(
              //                           child: Container(
              //                             height: 50,
              //                             width: double.infinity,
              //                             decoration: BoxDecoration(
              //                               color: Colors.red,
              //                             ),
              //                             child: MaterialButton(onPressed:() {},
              //                               child: Center(child: Text('الغاء'
              //                                 ,style: TextStyle(color: Colors.white),),),
              //                             ),
              //                           ),
              //                         ),
              //                         SizedBox(width: 20,),
              //                         Expanded(
              //                           child: Container(
              //                             height: 50,
              //                             width: double.infinity,
              //                             decoration: BoxDecoration(
              //                               color: Colors.green,
              //                             ),
              //                             child: MaterialButton(onPressed:() {},
              //                               child: Center(child: Text('تأكيد'
              //                                 ,style: TextStyle(color: Colors.white),),),
              //                             ),
              //                           ),
              //                         ),
              //
              //                       ],),
              //                   );
              //                 });
              //               },
              //                 child: Center(child: Text('غير موجود'
              //                   ,style: TextStyle(color: Colors.white),),),
              //               ),
              //             ),
              //           ),
              //           SizedBox(width: 10,),
              //           Expanded(
              //             child: Container(
              //               height: 50,
              //               width: double.infinity,
              //               color: Colors.blue,
              //               child: MaterialButton(onPressed:()
              //               {
              //                 showDialog(context: context, builder: (context)
              //                 {
              //                   return AlertDialog(title: Text('هل انت متأكد انك تريد تسجيل دخول هذا الراكب؟'),
              //                     content: Row(
              //                       children: [
              //                         Expanded(
              //                           child: Container(
              //                             height: 50,
              //                             width: double.infinity,
              //                             decoration: BoxDecoration(
              //                               color: Colors.red,
              //                             ),
              //                             child: MaterialButton(onPressed:() {},
              //                               child: Center(child: Text('الغاء'
              //                                 ,style: TextStyle(color: Colors.white),),),
              //                             ),
              //                           ),
              //                         ),
              //                         SizedBox(width: 20,),
              //                         Expanded(
              //                           child: Container(
              //                             height: 50,
              //                             width: double.infinity,
              //                             decoration: BoxDecoration(
              //                               color: Colors.blue,
              //                             ),
              //                             child: MaterialButton(onPressed:() {
              //                               Navigator.push(
              //                                 context,
              //                                 MaterialPageRoute(
              //                                     builder: (context) => MaherScreen()),
              //                               );
              //                             },
              //                               child: Center(child: Text('تأكيد'
              //                                 ,style: TextStyle(color: Colors.white),),),
              //                             ),
              //                           ),
              //                         ),
              //                       ],),
              //                   );
              //                 });
              //               },
              //                 child: Center(child: Text('تسجيل دخول'
              //                   ,style: TextStyle(color: Colors.white),),),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              //   SizedBox(height: 20,),
              //   Stack(
              //     alignment: Alignment.bottomCenter,
              //     children:
              //     [
              //       Container(
              //         height: 150,
              //         width: MediaQuery.of(context).size.width,
              //         color: Colors.white,
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Padding(
              //             padding: const EdgeInsets.only(bottom: 70),
              //             child: Row(
              //               children: [
              //                 CircleAvatar(
              //                   child: Icon(Icons.person,color: Colors.white,),
              //                 ),
              //                 SizedBox(width: 10,),
              //                 Padding(
              //                   padding: const EdgeInsets.only(bottom: 22),
              //                   child: Text('أحمد',style: TextStyle(
              //                     color: Colors.black,fontSize: 14,
              //                   ),),
              //                 ),
              //                 Expanded(child: Container()),
              //                 Padding(
              //                     padding: const EdgeInsets.only(top: 7),
              //                     child: Container(
              //                       height: 50,
              //                       width: 50,
              //                       color: Colors.grey[600],
              //                       child: Center(child: Text('2',style: TextStyle(color: Colors.white),),),
              //                     )
              //                 )
              //
              //               ],
              //             ),
              //           ),),),
              //       Padding(
              //         padding: const EdgeInsets.only(left: 60,bottom:74),
              //         child: Row(
              //           children:
              //           [
              //             Icon(Icons.airline_seat_recline_normal,color: Colors.black,),
              //             Text('عدد المقاعد 1',style: TextStyle(
              //               color: Colors.black,fontSize: 13,
              //             ),),
              //             Text('كاش',style: TextStyle(
              //               color: Colors.black,fontSize: 13,
              //             ),),
              //           ],
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.only(bottom: 60,left: 10,right: 10),
              //         child: Container(
              //           height: 1,
              //           width: double.infinity,
              //           color: Colors.grey[300],
              //         ),
              //       ),
              //       Row(
              //         children:
              //         [
              //           Expanded(
              //             child: Container(
              //               height: 50,
              //               width: double.infinity,
              //               color: Colors.redAccent,
              //               child: MaterialButton(onPressed:()
              //               {
              //                 showDialog(context: context, builder: (context)
              //                 {
              //                   return AlertDialog(title: Text('هل انت متأكد ان هذا الراكب غير موجود؟'),
              //                     content: Row(
              //                       children: [
              //                         Expanded(
              //                           child: Container(
              //                             height: 50,
              //                             width: double.infinity,
              //                             decoration: BoxDecoration(
              //                               color: Colors.red,
              //                             ),
              //                             child: MaterialButton(onPressed:()
              //                             {
              //
              //                             },
              //                               child: Center(child: Text('الغاء'
              //                                 ,style: TextStyle(color: Colors.white),),),
              //                             ),
              //                           ),
              //                         ),
              //                         SizedBox(width: 20,),
              //                         Expanded(
              //                           child: Container(
              //                             height: 50,
              //                             width: double.infinity,
              //                             decoration: BoxDecoration(
              //                               color: Colors.green,
              //                             ),
              //                             child: MaterialButton(onPressed:() {},
              //                               child: Center(child: Text('تأكيد'
              //                                 ,style: TextStyle(color: Colors.white),),),
              //                             ),
              //                           ),
              //                         ),
              //
              //                       ],),
              //                   );
              //                 });
              //               },
              //                 child: Center(child: Text('غير موجود'
              //                   ,style: TextStyle(color: Colors.white),),),
              //               ),
              //             ),
              //           ),
              //           SizedBox(width: 10,),
              //           Expanded(
              //             child: Container(
              //               height: 50,
              //               width: double.infinity,
              //               color: Colors.green,
              //               child: MaterialButton(onPressed:()
              //               {
              //                 showDialog(context: context, builder: (context)
              //                 {
              //                   return AlertDialog(title: Text('هل انت متأكد انك تريد تسجيل دخول هذا الراكب؟'),
              //                     content: Row(
              //                       children: [
              //                         Expanded(
              //                           child: Container(
              //                             height: 50,
              //                             width: double.infinity,
              //                             decoration: BoxDecoration(
              //                               color: Colors.red,
              //                             ),
              //                             child: MaterialButton(onPressed:()
              //                             {
              //
              //                             },
              //                               child: Center(child: Text('الغاء'
              //                                 ,style: TextStyle(color: Colors.white),),),
              //                             ),
              //                           ),
              //                         ),
              //                         SizedBox(width: 20,),
              //                         Expanded(
              //                           child: Container(
              //                             height: 50,
              //                             width: double.infinity,
              //                             decoration: BoxDecoration(
              //                               color: Colors.green,
              //                             ),
              //                             child: MaterialButton(onPressed:() {},
              //                               child: Center(child: Text('تأكيد'
              //                                 ,style: TextStyle(color: Colors.white),),),
              //                             ),
              //                           ),
              //                         ),
              //                       ],),
              //                   );
              //                 });
              //               },
              //                 child: Center(child: Text('تسجيل دخول'
              //                   ,style: TextStyle(color: Colors.white),),),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              //   SizedBox(height: 20,),
              //   Stack(
              //     alignment: Alignment.bottomCenter,
              //     children:
              //     [
              //       Container(
              //         height: 150,
              //         width: MediaQuery.of(context).size.width,
              //         color: Colors.white,
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Padding(
              //             padding: const EdgeInsets.only(bottom: 70),
              //             child: Row(
              //               children: [
              //                 CircleAvatar(
              //                   child: Icon(Icons.person,color: Colors.white,),
              //                 ),
              //                 SizedBox(width: 10,),
              //                 Padding(
              //                   padding: const EdgeInsets.only(bottom: 22),
              //                   child: Text('علي',style: TextStyle(
              //                     color: Colors.black,fontSize: 14,
              //                   ),),
              //                 ),
              //                 Expanded(child: Container()),
              //                 Padding(
              //                     padding: const EdgeInsets.only(top: 7),
              //                     child: Container(
              //                       height: 50,
              //                       width: 50,
              //                       color: Colors.grey[600],
              //                       child: Center(child: Text('3',style: TextStyle(color: Colors.white),),),
              //                     )
              //                 )
              //
              //               ],
              //             ),
              //           ),),),
              //       Padding(
              //         padding: const EdgeInsets.only(left: 60,bottom:74),
              //         child: Row(
              //           children:
              //           [
              //             Icon(Icons.airline_seat_recline_normal,color: Colors.black,),
              //             Text('عدد المقاعد 1',style: TextStyle(
              //               color: Colors.black,fontSize: 13,
              //             ),),
              //             Text('كاش',style: TextStyle(
              //               color: Colors.black,fontSize: 13,
              //             ),),
              //           ],
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.only(bottom: 60,left: 10,right: 10),
              //         child: Container(
              //           height: 1,
              //           width: double.infinity,
              //           color: Colors.grey[300],
              //         ),
              //       ),
              //       Row(
              //         children:
              //         [
              //           Expanded(
              //             child: Container(
              //               height: 50,
              //               width: double.infinity,
              //               color: Colors.redAccent,
              //               child: MaterialButton(onPressed:()
              //               {
              //                 showDialog(context: context, builder: (context)
              //                 {
              //                   return AlertDialog(title: Text('هل انت متأكد ان هذا الراكب غير موجود؟'),
              //                     content: Row(
              //                       children: [
              //                         Expanded(
              //                           child: Container(
              //                             height: 50,
              //                             width: double.infinity,
              //                             decoration: BoxDecoration(
              //                               color: Colors.red,
              //                             ),
              //                             child: MaterialButton(onPressed:()
              //                             {
              //
              //                             },
              //                               child: Center(child: Text('الغاء'
              //                                 ,style: TextStyle(color: Colors.white),),),
              //                             ),
              //                           ),
              //                         ),
              //                         SizedBox(width: 20,),
              //                         Expanded(
              //                           child: Container(
              //                             height: 50,
              //                             width: double.infinity,
              //                             decoration: BoxDecoration(
              //                               color: Colors.green,
              //                             ),
              //                             child: MaterialButton(onPressed:() {},
              //                               child: Center(child: Text('تأكيد'
              //                                 ,style: TextStyle(color: Colors.white),),),
              //                             ),
              //                           ),
              //                         ),
              //
              //                       ],),
              //                   );
              //                 });
              //               },
              //                 child: Center(child: Text('غير موجود'
              //                   ,style: TextStyle(color: Colors.white),),),
              //               ),
              //             ),
              //           ),
              //           SizedBox(width: 10,),
              //           Expanded(
              //             child: Container(
              //               height: 50,
              //               width: double.infinity,
              //               color: Colors.green,
              //               child: MaterialButton(onPressed:()
              //               {
              //                 showDialog(context: context, builder: (context)
              //                 {
              //                   return AlertDialog(title: Text('هل انت متأكد انك تريد تسجيل دخول هذا الراكب؟'),
              //                     content: Row(
              //                       children: [
              //                         Expanded(
              //                           child: Container(
              //                             height: 50,
              //                             width: double.infinity,
              //                             decoration: BoxDecoration(
              //                               color: Colors.red,
              //                             ),
              //                             child: MaterialButton(onPressed:()
              //                             {
              //
              //                             },
              //                               child: Center(child: Text('الغاء'
              //                                 ,style: TextStyle(color: Colors.white),),),
              //                             ),
              //                           ),
              //                         ),
              //                         SizedBox(width: 20,),
              //                         Expanded(
              //                           child: Container(
              //                             height: 50,
              //                             width: double.infinity,
              //                             decoration: BoxDecoration(
              //                               color: Colors.green,
              //                             ),
              //                             child: MaterialButton(onPressed:() {},
              //                               child: Center(child: Text('تأكيد'
              //                                 ,style: TextStyle(color: Colors.white),),),
              //                             ),
              //                           ),
              //                         ),
              //                       ],),
              //                   );
              //                 });
              //               },
              //                 child: Center(child: Text('تسجيل دخول'
              //                   ,style: TextStyle(color: Colors.white),),),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              //   SizedBox(height: 20,),
              //   Text('فاتت',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              //   SizedBox(height: 20,),
              //   Stack(
              //     alignment: Alignment.bottomCenter,
              //     children:
              //     [
              //       Container(
              //         height: 150,
              //         width: MediaQuery.of(context).size.width,
              //         color: Colors.white,
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Padding(
              //             padding: const EdgeInsets.only(bottom: 70),
              //             child: Row(
              //               children: [
              //                 CircleAvatar(
              //                   child: Icon(Icons.person,color: Colors.white,),
              //                 ),
              //                 SizedBox(width: 10,),
              //                 Padding(
              //                   padding: const EdgeInsets.only(bottom: 22),
              //                   child: Text('Alex',style: TextStyle(
              //                     color: Colors.black,fontSize: 14,
              //                   ),),
              //                 ),
              //                 Expanded(child: Container()),
              //                 Padding(
              //                     padding: const EdgeInsets.only(top: 7),
              //                     child: Container(
              //                       height: 50,
              //                       width: 50,
              //                       color: Colors.grey[600],
              //                       child: Center(child: Text('11',style: TextStyle(color: Colors.white),),),
              //                     )
              //                 )
              //
              //               ],
              //             ),
              //           ),),),
              //       Padding(
              //         padding: const EdgeInsets.only(left: 60,bottom:74),
              //         child: Row(
              //           children:
              //           [
              //             Icon(Icons.airline_seat_recline_normal,color: Colors.black,),
              //             Text('عدد المقاعد 1',style: TextStyle(
              //               color: Colors.black,fontSize: 13,
              //             ),),
              //             Text('كاش',style: TextStyle(
              //               color: Colors.black,fontSize: 13,
              //             ),),
              //           ],
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.only(bottom: 60,left: 10,right: 10),
              //         child: Container(
              //           height: 1,
              //           width: double.infinity,
              //           color: Colors.grey[300],
              //         ),
              //       ),
              //       Row(
              //         children:
              //         [
              //           Expanded(
              //             child: Container(
              //               height: 50,
              //               width: double.infinity,
              //               color: Colors.green,
              //               child: MaterialButton(onPressed:()
              //               {
              //                 showDialog(context: context, builder: (context)
              //                 {
              //                   return AlertDialog(title: Text('هل انت متأكد انك تريد تسجيل دخول هذا الراكب؟'),
              //                     content: Row(
              //                       children: [
              //                         Expanded(
              //                           child: Container(
              //                             height: 50,
              //                             width: double.infinity,
              //                             decoration: BoxDecoration(
              //                               color: Colors.red,
              //                             ),
              //                             child: MaterialButton(onPressed:() {},
              //                               child: Center(child: Text('الغاء'
              //                                 ,style: TextStyle(color: Colors.white),),),
              //                             ),
              //                           ),
              //                         ),
              //                         SizedBox(width: 20,),
              //                         Expanded(
              //                           child: Container(
              //                             height: 50,
              //                             width: double.infinity,
              //                             decoration: BoxDecoration(
              //                               color: Colors.green,
              //                             ),
              //                             child: MaterialButton(onPressed:() {},
              //                               child: Center(child: Text('تأكيد'
              //                                 ,style: TextStyle(color: Colors.white),),),
              //                             ),
              //                           ),
              //                         ),
              //                       ],),
              //                   );
              //                 });
              //               },
              //                 child: Center(child: Text('تسجيل دخول'
              //                   ,style: TextStyle(color: Colors.white),),),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              //   SizedBox(height: 20,),
              // ],
              ),
        ));
  }
}
