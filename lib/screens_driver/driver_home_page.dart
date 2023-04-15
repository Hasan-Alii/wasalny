// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wasalny/screens_driver/map_page.dart';
import 'rider1.dart';
import 'package:intl/intl.dart';
import 'day_of_month.dart';

class DriverHomePage extends StatefulWidget {
  const DriverHomePage({super.key});

  @override
  State<DriverHomePage> createState() => _DriverHomePageState();
}

class BusRoutes extends StatelessWidget {
  const BusRoutes({super.key});
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Color(0xFF040C4D),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DriverHomePage()),);},

        ),
        title: const Text('مسار الرحلة'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white70,
                  borderRadius: BorderRadiusDirectional.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.groups),
                        SizedBox(
                          width: 4,
                        ),
                        Text('16 راكب',style: TextStyle(
                          fontSize: 20,
                        ),),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Divider(thickness: 5,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.pin_drop_outlined, color: Colors.red, size: 30,),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text('محطة البداية: استاد القاهرة',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                        Text('07:30 am',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(thickness: 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.arrow_circle_right_rounded, color: Colors.green,),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text('رابعة العدوية',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                        Text('07:45 am',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.arrow_circle_right_rounded, color: Colors.green,),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text('الحي السابع',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                        Text('08:00 am',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.arrow_circle_right_rounded, color: Colors.green,),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text('إنبي',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                        Text('08:05 am',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.arrow_circle_right_rounded, color: Colors.green,),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text('زهراء مدينة نصر',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                        Text('08:15 am',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.arrow_circle_right_rounded, color: Colors.green,),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text('أكاديمية الشرطة',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                        Text('08:30 am',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.arrow_circle_right_rounded, color: Colors.green,),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text('طريق السويس',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                        Text('08:35 am',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.arrow_circle_right_rounded, color: Colors.green,),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text('بوابة مدينتي 1',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                        Text('08:50 am',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(thickness: 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.pin_drop_outlined, color: Color(0xFF040C4D), size: 30,),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text('الوجهة: أكاديمية الشروق',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold)),
                        ),
                        Text('09:00 am',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<
                      Color>(Color(0xFF040C4D)),
                  foregroundColor:
                  MaterialStateProperty.all<
                      Color>(Colors.white),
                  shape: MaterialStateProperty.all<
                      RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(8.0),
                        side: BorderSide(
                            color: Color(0xFF040C4D),
                            width: 2),
                      ))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Rider1()),
                );
              },
              child: const Text('أبدأ الرحلة', style: TextStyle(fontSize: 25),),
            ),
          ),
        ],
      ),
    );
  }
}
/////////////////////////////////////////////////  THE BUS ROUTE SCREEN  ////////////////////////////////////////////////


class _DriverHomePageState extends State<DriverHomePage> {
  // DateTime now = DateTime.now();
  // late DateTime lastDayOfMonth = DateTime(
  //   DateTime.now().year,
  //   DateTime.now().month,
  //   DateTime.now().day,
  // );
  // final currentDate = DateTime.now().day;
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 0,
        length: 4,
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
                Tab(
                  child: Text(
                    DateFormat('EEEE dd/MM').format(
                      DayOfMonth().addDay(1),
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    DateFormat('EEEE dd/MM').format(
                      DayOfMonth().addDay(2),
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    DateFormat('EEEE dd/MM').format(
                      DayOfMonth().addDay(3),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            SingleChildScrollView(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Center(
                      child: Card(
                        child: Container(
                          width: double.infinity,
                          // height: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
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
                                            DateFormat('hh:mm aa')
                                                .format(DateTime.now()),
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Text(
                                          'تنتهي في ' + //this indicates when the trip is estimated to end
                                              DateFormat('hh:mm').format(
                                                DayOfMonth()
                                                    .addHourAndMinute(1, 30),
                                              ),
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
                                        padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0, 20, 0, 20),
                                        child: Image.asset(
                                          'assets/images/PinBus.png',
                                          color: Color(0xFF040C4D),
                                          width: 70,
                                          height: 70,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(8, 24, 16, 4),
                                            child: Text('مكرم عبيد'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(8, 0, 16, 24),
                                            child: Text('باندا',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.grey)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(8, 0, 16, 4),
                                            child: Text('أكاديمية الشروق'),
                                          ),
                                          Padding(
                                            padding: const EdgeInsetsDirectional
                                                .fromSTEB(8, 0, 16, 15),
                                            child: Text(
                                                'كلية الحاسبات وتكنولوجيا المعلومات',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.grey)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                8, 0, 0, 0),
                                        child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Color(0xFFFFCDD2)),
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.red),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                side: BorderSide(
                                                    color: Colors.red, width: 2),
                                              ))),
                                          child: Text(
                                            'رفض',
                                            // style: TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            showModalBottomSheet(
                                                context: context,
                                                builder: (context) {
                                                  return SingleChildScrollView(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment.end,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                color: Colors
                                                                    .red[100],
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Text(
                                                                      'رحلة مرفوضة',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .red,
                                                                          fontSize:
                                                                              20),
                                                                    ),
                                                                    Text(
                                                                      'كده انت هترفض الرحلة ومش هيتفع تكملها',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                color: Colors.red,
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(8),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Text(
                                                                      'ممكن يبقى فيه خصم على الخطوة دي',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize:
                                                                              12),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 4,
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .warning_amber,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 6,
                                                        ),
                                                        Text(
                                                          'سبب الرفض؟',
                                                          style: TextStyle(
                                                              color: Colors.red,
                                                              fontSize: 15),
                                                        ),
                                                        Divider(
                                                          thickness: 2,
                                                        ),
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                          children: [
                                                            ListTile(
                                                              leading: Radio(
                                                                  value: 1,
                                                                  groupValue: _value,
                                                                  onChanged: (_) {
                                                                    setState(() {
                                                                      _value = 1;
                                                                    });
                                                                  }),
                                                              title: Text(
                                                                  'العربية عطلت'),
                                                              onTap: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                            Divider(
                                                              thickness: 2,
                                                            ),
                                                            ListTile(
                                                              leading: Radio(
                                                                  value: 2,
                                                                  groupValue: _value,
                                                                  onChanged: (_) {
                                                                    setState(() {
                                                                      _value = 2;
                                                                    });
                                                                  }),
                                                              title: Text(
                                                                  'مشكلة في الخط'),
                                                              onTap: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                            Divider(
                                                              thickness: 2,
                                                            ),
                                                            ListTile(
                                                              leading: Radio(
                                                                  value: 3,
                                                                  groupValue: _value,
                                                                  onChanged: (_) {
                                                                    setState(() {
                                                                      _value = 3;
                                                                    });
                                                                  }),
                                                              title: Text(
                                                                  'مشكلة مع الشرطة'),
                                                              onTap: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                            Divider(
                                                              thickness: 2,
                                                            ),
                                                            ListTile(
                                                              leading: Radio(
                                                                  value: 4,
                                                                  groupValue: _value,
                                                                  onChanged: (_) {
                                                                    setState(() {
                                                                      _value = 4;
                                                                    });
                                                                  }),
                                                              title: Text(
                                                                  'الانترنت مش شغال'),
                                                              onTap: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                            Divider(
                                                              thickness: 2,
                                                            ),
                                                            ListTile(
                                                              leading: Radio(
                                                                  value: 5,
                                                                  groupValue: _value,
                                                                  onChanged: (_) {
                                                                    setState(() {
                                                                      _value = 5;
                                                                    });
                                                                  }),
                                                              title: Text(
                                                                  'حصل لي حادثة'),
                                                              onTap: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                            Divider(
                                                              thickness: 2,
                                                            ),
                                                            ListTile(
                                                              leading: Radio(
                                                                  value: 6,
                                                                  groupValue: _value,
                                                                  onChanged: (_) {
                                                                    setState(() {
                                                                      _value = 6;
                                                                    });
                                                                  }),
                                                              title: Text(
                                                                  'اتكلفت برحلة غلط'),
                                                              onTap: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                            ),
                                                          ],
                                                        ),

                                                      ],
                                                    ),
                                                  );
                                                });
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(
                                              16, 0, 8, 0),
                                          child: TextButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Color(0xFFC8E6C9)),
                                                foregroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Color(0xFF10462E)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20.0),
                                                  side: BorderSide(
                                                      color: Colors.green,
                                                      width: 2),
                                                ))),
                                            child: Text(
                                              'تأكيد الرحلة',
                                              // style: TextStyle(color: Colors.white),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const BusRoutes()),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Center(
                      child: Card(
                        child: Container(
                          width: double.infinity,
                          // height: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  blurStyle: BlurStyle.solid,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 0))
                            ],
                          ),
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
                                          DateFormat('hh:mm aa')
                                              .format(DateTime.now()),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        'تنتهي في ' + //this indicates when the trip is estimated to end
                                            DateFormat('hh:mm').format(
                                              DayOfMonth()
                                                  .addHourAndMinute(1, 30),
                                            ),
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
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 20),
                                      child: Image.asset(
                                        'assets/images/PinBus.png',
                                        color: Color(0xFF040C4D),
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 24, 16, 4),
                                          child: Text('مكرم عبيد'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 24),
                                          child: Text('باندا',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 4),
                                          child: Text('أكاديمية الشروق'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 15),
                                          child: Text(
                                              'كلية الحاسبات وتكنولوجيا المعلومات',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Color(0xFFFFCDD2)),
                                            foregroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Colors.red),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(20.0),
                                                  side: BorderSide(
                                                      color: Colors.red, width: 2),
                                                ))),
                                        child: Text(
                                          'رفض',
                                          // style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors
                                                                  .red[100],
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'رحلة مرفوضة',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontSize:
                                                                        20),
                                                                  ),
                                                                  Text(
                                                                    'كده انت هترفض الرحلة ومش هيتفع تكملها',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors.red,
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'ممكن يبقى فيه خصم على الخطوة دي',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 4,
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .warning_amber,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Text(
                                                        'سبب الرفض؟',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 15),
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 1,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 1;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'العربية عطلت'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 2,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 2;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة في الخط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 3,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 3;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة مع الشرطة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 4,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 4;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'الانترنت مش شغال'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 5,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 5;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'حصل لي حادثة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 6,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 6;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'اتكلفت برحلة غلط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 8, 0),
                                        child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFFC8E6C9)),
                                              foregroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFF10462E)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(20.0),
                                                    side: BorderSide(
                                                        color: Colors.green,
                                                        width: 2),
                                                  ))),
                                          child: Text(
                                            'تأكيد الرحلة',
                                            // style: TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const BusRoutes()),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Center(
                      child: Card(
                        child: Container(
                          width: double.infinity,
                          // height: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  blurStyle: BlurStyle.solid,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 0))
                            ],
                          ),
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
                                          DateFormat('hh:mm aa')
                                              .format(DateTime.now()),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        'تنتهي في ' + //this indicates when the trip is estimated to end
                                            DateFormat('hh:mm').format(
                                              DayOfMonth()
                                                  .addHourAndMinute(1, 30),
                                            ),
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
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 20),
                                      child: Image.asset(
                                        'assets/images/PinBus.png',
                                        color: Color(0xFF040C4D),
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 24, 16, 4),
                                          child: Text('مكرم عبيد'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 24),
                                          child: Text('باندا',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 4),
                                          child: Text('أكاديمية الشروق'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 15),
                                          child: Text(
                                              'كلية الحاسبات وتكنولوجيا المعلومات',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Color(0xFFFFCDD2)),
                                            foregroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Colors.red),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(20.0),
                                                  side: BorderSide(
                                                      color: Colors.red, width: 2),
                                                ))),
                                        child: Text(
                                          'رفض',
                                          // style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors
                                                                  .red[100],
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'رحلة مرفوضة',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontSize:
                                                                        20),
                                                                  ),
                                                                  Text(
                                                                    'كده انت هترفض الرحلة ومش هيتفع تكملها',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors.red,
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'ممكن يبقى فيه خصم على الخطوة دي',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 4,
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .warning_amber,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Text(
                                                        'سبب الرفض؟',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 15),
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 1,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 1;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'العربية عطلت'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 2,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 2;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة في الخط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 3,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 3;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة مع الشرطة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 4,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 4;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'الانترنت مش شغال'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 5,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 5;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'حصل لي حادثة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 6,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 6;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'اتكلفت برحلة غلط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 8, 0),
                                        child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFFC8E6C9)),
                                              foregroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFF10462E)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(20.0),
                                                    side: BorderSide(
                                                        color: Colors.green,
                                                        width: 2),
                                                  ))),
                                          child: Text(
                                            'تأكيد الرحلة',
                                            // style: TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const BusRoutes()),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Center(
                      child: Card(
                        child: Container(
                          width: double.infinity,
                          // height: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  blurStyle: BlurStyle.solid,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 0))
                            ],
                          ),
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
                                          DateFormat('hh:mm aa')
                                              .format(DateTime.now()),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        'تنتهي في ' + //this indicates when the trip is estimated to end
                                            DateFormat('hh:mm').format(
                                              DayOfMonth()
                                                  .addHourAndMinute(1, 30),
                                            ),
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
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 20),
                                      child: Image.asset(
                                        'assets/images/PinBus.png',
                                        color: Color(0xFF040C4D),
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 24, 16, 4),
                                          child: Text('مكرم عبيد'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 24),
                                          child: Text('باندا',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 4),
                                          child: Text('أكاديمية الشروق'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 15),
                                          child: Text(
                                              'كلية الحاسبات وتكنولوجيا المعلومات',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Color(0xFFFFCDD2)),
                                            foregroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Colors.red),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(20.0),
                                                  side: BorderSide(
                                                      color: Colors.red, width: 2),
                                                ))),
                                        child: Text(
                                          'رفض',
                                          // style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors
                                                                  .red[100],
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'رحلة مرفوضة',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontSize:
                                                                        20),
                                                                  ),
                                                                  Text(
                                                                    'كده انت هترفض الرحلة ومش هيتفع تكملها',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors.red,
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'ممكن يبقى فيه خصم على الخطوة دي',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 4,
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .warning_amber,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Text(
                                                        'سبب الرفض؟',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 15),
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 1,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 1;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'العربية عطلت'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 2,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 2;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة في الخط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 3,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 3;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة مع الشرطة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 4,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 4;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'الانترنت مش شغال'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 5,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 5;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'حصل لي حادثة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 6,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 6;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'اتكلفت برحلة غلط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 8, 0),
                                        child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFFC8E6C9)),
                                              foregroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFF10462E)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(20.0),
                                                    side: BorderSide(
                                                        color: Colors.green,
                                                        width: 2),
                                                  ))),
                                          child: Text(
                                            'تأكيد الرحلة',
                                            // style: TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const BusRoutes()),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Center(
                      child: Card(
                        child: Container(
                          width: double.infinity,
                          // height: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  blurStyle: BlurStyle.solid,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 0))
                            ],
                          ),
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
                                          DateFormat('hh:mm aa')
                                              .format(DateTime.now()),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        'تنتهي في ' + //this indicates when the trip is estimated to end
                                            DateFormat('hh:mm').format(
                                              DayOfMonth()
                                                  .addHourAndMinute(1, 30),
                                            ),
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
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 20),
                                      child: Image.asset(
                                        'assets/images/PinBus.png',
                                        color: Color(0xFF040C4D),
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 24, 16, 4),
                                          child: Text('مكرم عبيد'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 24),
                                          child: Text('باندا',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 4),
                                          child: Text('أكاديمية الشروق'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 15),
                                          child: Text(
                                              'كلية الحاسبات وتكنولوجيا المعلومات',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Color(0xFFFFCDD2)),
                                            foregroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Colors.red),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(20.0),
                                                  side: BorderSide(
                                                      color: Colors.red, width: 2),
                                                ))),
                                        child: Text(
                                          'رفض',
                                          // style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors
                                                                  .red[100],
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'رحلة مرفوضة',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontSize:
                                                                        20),
                                                                  ),
                                                                  Text(
                                                                    'كده انت هترفض الرحلة ومش هيتفع تكملها',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors.red,
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'ممكن يبقى فيه خصم على الخطوة دي',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 4,
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .warning_amber,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Text(
                                                        'سبب الرفض؟',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 15),
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 1,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 1;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'العربية عطلت'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 2,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 2;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة في الخط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 3,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 3;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة مع الشرطة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 4,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 4;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'الانترنت مش شغال'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 5,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 5;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'حصل لي حادثة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 6,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 6;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'اتكلفت برحلة غلط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 8, 0),
                                        child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFFC8E6C9)),
                                              foregroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFF10462E)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(20.0),
                                                    side: BorderSide(
                                                        color: Colors.green,
                                                        width: 2),
                                                  ))),
                                          child: Text(
                                            'تأكيد الرحلة',
                                            // style: TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const BusRoutes()),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Center(
                      child: Card(
                        child: Container(
                          width: double.infinity,
                          // height: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  blurStyle: BlurStyle.solid,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 0))
                            ],
                          ),
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
                                          DateFormat('hh:mm aa')
                                              .format(DateTime.now()),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        'تنتهي في ' + //this indicates when the trip is estimated to end
                                            DateFormat('hh:mm').format(
                                              DayOfMonth()
                                                  .addHourAndMinute(1, 30),
                                            ),
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
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 20),
                                      child: Image.asset(
                                        'assets/images/PinBus.png',
                                        color: Color(0xFF040C4D),
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 24, 16, 4),
                                          child: Text('مكرم عبيد'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 24),
                                          child: Text('باندا',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 4),
                                          child: Text('أكاديمية الشروق'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 15),
                                          child: Text(
                                              'كلية الحاسبات وتكنولوجيا المعلومات',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Color(0xFFFFCDD2)),
                                            foregroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Colors.red),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(20.0),
                                                  side: BorderSide(
                                                      color: Colors.red, width: 2),
                                                ))),
                                        child: Text(
                                          'رفض',
                                          // style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors
                                                                  .red[100],
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'رحلة مرفوضة',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontSize:
                                                                        20),
                                                                  ),
                                                                  Text(
                                                                    'كده انت هترفض الرحلة ومش هيتفع تكملها',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors.red,
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'ممكن يبقى فيه خصم على الخطوة دي',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 4,
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .warning_amber,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Text(
                                                        'سبب الرفض؟',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 15),
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 1,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 1;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'العربية عطلت'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 2,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 2;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة في الخط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 3,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 3;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة مع الشرطة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 4,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 4;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'الانترنت مش شغال'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 5,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 5;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'حصل لي حادثة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 6,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 6;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'اتكلفت برحلة غلط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 8, 0),
                                        child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFFC8E6C9)),
                                              foregroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFF10462E)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(20.0),
                                                    side: BorderSide(
                                                        color: Colors.green,
                                                        width: 2),
                                                  ))),
                                          child: Text(
                                            'تأكيد الرحلة',
                                            // style: TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const BusRoutes()),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Center(
                      child: Card(
                        child: Container(
                          width: double.infinity,
                          // height: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  blurStyle: BlurStyle.solid,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 0))
                            ],
                          ),
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
                                          DateFormat('hh:mm aa')
                                              .format(DateTime.now()),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        'تنتهي في ' + //this indicates when the trip is estimated to end
                                            DateFormat('hh:mm').format(
                                              DayOfMonth()
                                                  .addHourAndMinute(1, 30),
                                            ),
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
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 20),
                                      child: Image.asset(
                                        'assets/images/PinBus.png',
                                        color: Color(0xFF040C4D),
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 24, 16, 4),
                                          child: Text('مكرم عبيد'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 24),
                                          child: Text('باندا',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 4),
                                          child: Text('أكاديمية الشروق'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 15),
                                          child: Text(
                                              'كلية الحاسبات وتكنولوجيا المعلومات',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Color(0xFFFFCDD2)),
                                            foregroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Colors.red),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(20.0),
                                                  side: BorderSide(
                                                      color: Colors.red, width: 2),
                                                ))),
                                        child: Text(
                                          'رفض',
                                          // style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors
                                                                  .red[100],
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'رحلة مرفوضة',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontSize:
                                                                        20),
                                                                  ),
                                                                  Text(
                                                                    'كده انت هترفض الرحلة ومش هيتفع تكملها',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors.red,
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'ممكن يبقى فيه خصم على الخطوة دي',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 4,
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .warning_amber,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Text(
                                                        'سبب الرفض؟',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 15),
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 1,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 1;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'العربية عطلت'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 2,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 2;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة في الخط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 3,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 3;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة مع الشرطة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 4,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 4;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'الانترنت مش شغال'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 5,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 5;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'حصل لي حادثة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 6,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 6;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'اتكلفت برحلة غلط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 8, 0),
                                        child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFFC8E6C9)),
                                              foregroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFF10462E)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(20.0),
                                                    side: BorderSide(
                                                        color: Colors.green,
                                                        width: 2),
                                                  ))),
                                          child: Text(
                                            'تأكيد الرحلة',
                                            // style: TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const BusRoutes()),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Center(
                      child: Card(
                        child: Container(
                          width: double.infinity,
                          // height: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  blurStyle: BlurStyle.solid,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 0))
                            ],
                          ),
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
                                          DateFormat('hh:mm aa')
                                              .format(DateTime.now()),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        'تنتهي في ' + //this indicates when the trip is estimated to end
                                            DateFormat('hh:mm').format(
                                              DayOfMonth()
                                                  .addHourAndMinute(1, 30),
                                            ),
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
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 20),
                                      child: Image.asset(
                                        'assets/images/PinBus.png',
                                        color: Color(0xFF040C4D),
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 24, 16, 4),
                                          child: Text('مكرم عبيد'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 24),
                                          child: Text('باندا',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 4),
                                          child: Text('أكاديمية الشروق'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 15),
                                          child: Text(
                                              'كلية الحاسبات وتكنولوجيا المعلومات',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Color(0xFFFFCDD2)),
                                            foregroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Colors.red),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(20.0),
                                                  side: BorderSide(
                                                      color: Colors.red, width: 2),
                                                ))),
                                        child: Text(
                                          'رفض',
                                          // style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors
                                                                  .red[100],
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'رحلة مرفوضة',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontSize:
                                                                        20),
                                                                  ),
                                                                  Text(
                                                                    'كده انت هترفض الرحلة ومش هيتفع تكملها',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors.red,
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'ممكن يبقى فيه خصم على الخطوة دي',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 4,
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .warning_amber,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Text(
                                                        'سبب الرفض؟',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 15),
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 1,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 1;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'العربية عطلت'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 2,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 2;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة في الخط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 3,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 3;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة مع الشرطة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 4,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 4;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'الانترنت مش شغال'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 5,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 5;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'حصل لي حادثة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 6,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 6;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'اتكلفت برحلة غلط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 8, 0),
                                        child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFFC8E6C9)),
                                              foregroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFF10462E)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(20.0),
                                                    side: BorderSide(
                                                        color: Colors.green,
                                                        width: 2),
                                                  ))),
                                          child: Text(
                                            'تأكيد الرحلة',
                                            // style: TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const BusRoutes()),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Center(
                      child: Card(
                        child: Container(
                          width: double.infinity,
                          // height: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  blurStyle: BlurStyle.solid,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 0))
                            ],
                          ),
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
                                          DateFormat('hh:mm aa')
                                              .format(DateTime.now()),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        'تنتهي في ' + //this indicates when the trip is estimated to end
                                            DateFormat('hh:mm').format(
                                              DayOfMonth()
                                                  .addHourAndMinute(1, 30),
                                            ),
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
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 20),
                                      child: Image.asset(
                                        'assets/images/PinBus.png',
                                        color: Color(0xFF040C4D),
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 24, 16, 4),
                                          child: Text('مكرم عبيد'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 24),
                                          child: Text('باندا',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 4),
                                          child: Text('أكاديمية الشروق'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 15),
                                          child: Text(
                                              'كلية الحاسبات وتكنولوجيا المعلومات',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Color(0xFFFFCDD2)),
                                            foregroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Colors.red),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(20.0),
                                                  side: BorderSide(
                                                      color: Colors.red, width: 2),
                                                ))),
                                        child: Text(
                                          'رفض',
                                          // style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors
                                                                  .red[100],
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'رحلة مرفوضة',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontSize:
                                                                        20),
                                                                  ),
                                                                  Text(
                                                                    'كده انت هترفض الرحلة ومش هيتفع تكملها',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors.red,
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'ممكن يبقى فيه خصم على الخطوة دي',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 4,
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .warning_amber,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Text(
                                                        'سبب الرفض؟',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 15),
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 1,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 1;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'العربية عطلت'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 2,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 2;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة في الخط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 3,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 3;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة مع الشرطة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 4,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 4;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'الانترنت مش شغال'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 5,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 5;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'حصل لي حادثة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 6,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 6;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'اتكلفت برحلة غلط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 8, 0),
                                        child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFFC8E6C9)),
                                              foregroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFF10462E)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(20.0),
                                                    side: BorderSide(
                                                        color: Colors.green,
                                                        width: 2),
                                                  ))),
                                          child: Text(
                                            'تأكيد الرحلة',
                                            // style: TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const BusRoutes()),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Center(
                      child: Card(
                        child: Container(
                          width: double.infinity,
                          // height: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  blurStyle: BlurStyle.solid,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 0))
                            ],
                          ),
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
                                          DateFormat('hh:mm aa')
                                              .format(DateTime.now()),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        'تنتهي في ' + //this indicates when the trip is estimated to end
                                            DateFormat('hh:mm').format(
                                              DayOfMonth()
                                                  .addHourAndMinute(1, 30),
                                            ),
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
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 20),
                                      child: Image.asset(
                                        'assets/images/PinBus.png',
                                        color: Color(0xFF040C4D),
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 24, 16, 4),
                                          child: Text('مكرم عبيد'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 24),
                                          child: Text('باندا',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 4),
                                          child: Text('أكاديمية الشروق'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 15),
                                          child: Text(
                                              'كلية الحاسبات وتكنولوجيا المعلومات',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Color(0xFFFFCDD2)),
                                            foregroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Colors.red),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(20.0),
                                                  side: BorderSide(
                                                      color: Colors.red, width: 2),
                                                ))),
                                        child: Text(
                                          'رفض',
                                          // style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors
                                                                  .red[100],
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'رحلة مرفوضة',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontSize:
                                                                        20),
                                                                  ),
                                                                  Text(
                                                                    'كده انت هترفض الرحلة ومش هيتفع تكملها',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors.red,
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'ممكن يبقى فيه خصم على الخطوة دي',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 4,
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .warning_amber,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Text(
                                                        'سبب الرفض؟',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 15),
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 1,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 1;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'العربية عطلت'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 2,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 2;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة في الخط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 3,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 3;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة مع الشرطة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 4,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 4;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'الانترنت مش شغال'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 5,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 5;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'حصل لي حادثة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 6,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 6;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'اتكلفت برحلة غلط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 8, 0),
                                        child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFFC8E6C9)),
                                              foregroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFF10462E)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(20.0),
                                                    side: BorderSide(
                                                        color: Colors.green,
                                                        width: 2),
                                                  ))),
                                          child: Text(
                                            'تأكيد الرحلة',
                                            // style: TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const BusRoutes()),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Center(
                      child: Card(
                        child: Container(
                          width: double.infinity,
                          // height: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  blurStyle: BlurStyle.solid,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 0))
                            ],
                          ),
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
                                          DateFormat('hh:mm aa')
                                              .format(DateTime.now()),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        'تنتهي في ' + //this indicates when the trip is estimated to end
                                            DateFormat('hh:mm').format(
                                              DayOfMonth()
                                                  .addHourAndMinute(1, 30),
                                            ),
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
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 20),
                                      child: Image.asset(
                                        'assets/images/PinBus.png',
                                        color: Color(0xFF040C4D),
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 24, 16, 4),
                                          child: Text('مكرم عبيد'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 24),
                                          child: Text('باندا',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 4),
                                          child: Text('أكاديمية الشروق'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 15),
                                          child: Text(
                                              'كلية الحاسبات وتكنولوجيا المعلومات',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Color(0xFFFFCDD2)),
                                            foregroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Colors.red),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(20.0),
                                                  side: BorderSide(
                                                      color: Colors.red, width: 2),
                                                ))),
                                        child: Text(
                                          'رفض',
                                          // style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors
                                                                  .red[100],
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'رحلة مرفوضة',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontSize:
                                                                        20),
                                                                  ),
                                                                  Text(
                                                                    'كده انت هترفض الرحلة ومش هيتفع تكملها',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors.red,
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'ممكن يبقى فيه خصم على الخطوة دي',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 4,
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .warning_amber,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Text(
                                                        'سبب الرفض؟',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 15),
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 1,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 1;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'العربية عطلت'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 2,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 2;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة في الخط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 3,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 3;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة مع الشرطة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 4,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 4;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'الانترنت مش شغال'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 5,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 5;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'حصل لي حادثة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 6,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 6;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'اتكلفت برحلة غلط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 8, 0),
                                        child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFFC8E6C9)),
                                              foregroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFF10462E)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(20.0),
                                                    side: BorderSide(
                                                        color: Colors.green,
                                                        width: 2),
                                                  ))),
                                          child: Text(
                                            'تأكيد الرحلة',
                                            // style: TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const BusRoutes()),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Center(
                      child: Card(
                        child: Container(
                          width: double.infinity,
                          // height: 270,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            boxShadow: [
                              BoxShadow(
                                  blurStyle: BlurStyle.solid,
                                  blurRadius: 8,
                                  spreadRadius: 2,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 0))
                            ],
                          ),
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
                                          DateFormat('hh:mm aa')
                                              .format(DateTime.now()),
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        'تنتهي في ' + //this indicates when the trip is estimated to end
                                            DateFormat('hh:mm').format(
                                              DayOfMonth()
                                                  .addHourAndMinute(1, 30),
                                            ),
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
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 20),
                                      child: Image.asset(
                                        'assets/images/PinBus.png',
                                        color: Color(0xFF040C4D),
                                        width: 70,
                                        height: 70,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 24, 16, 4),
                                          child: Text('مكرم عبيد'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 24),
                                          child: Text('باندا',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 4),
                                          child: Text('أكاديمية الشروق'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(8, 0, 16, 15),
                                          child: Text(
                                              'كلية الحاسبات وتكنولوجيا المعلومات',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.grey)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          8, 0, 0, 0),
                                      child: TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Color(0xFFFFCDD2)),
                                            foregroundColor:
                                            MaterialStateProperty.all<
                                                Color>(Colors.red),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(20.0),
                                                  side: BorderSide(
                                                      color: Colors.red, width: 2),
                                                ))),
                                        child: Text(
                                          'رفض',
                                          // style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (context) {
                                                return SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors
                                                                  .red[100],
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'رحلة مرفوضة',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .red,
                                                                        fontSize:
                                                                        20),
                                                                  ),
                                                                  Text(
                                                                    'كده انت هترفض الرحلة ومش هيتفع تكملها',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .end,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              color: Colors.red,
                                                              padding:
                                                              EdgeInsets
                                                                  .all(8),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                                children: [
                                                                  Text(
                                                                    'ممكن يبقى فيه خصم على الخطوة دي',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                        12),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 4,
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .warning_amber,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Text(
                                                        'سبب الرفض؟',
                                                        style: TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 15),
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 1,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 1;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'العربية عطلت'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 2,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 2;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة في الخط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 3,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 3;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'مشكلة مع الشرطة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 4,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 4;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'الانترنت مش شغال'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 5,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 5;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'حصل لي حادثة'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                      ),
                                                      ListTile(
                                                        leading: Radio(
                                                            value: 6,
                                                            groupValue: _value,
                                                            onChanged: (_) {
                                                              setState(() {
                                                                _value = 6;
                                                              });
                                                            }),
                                                        title: Text(
                                                            'اتكلفت برحلة غلط'),
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              });
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16, 0, 8, 0),
                                        child: TextButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFFC8E6C9)),
                                              foregroundColor:
                                              MaterialStateProperty.all<
                                                  Color>(Color(0xFF10462E)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(20.0),
                                                    side: BorderSide(
                                                        color: Colors.green,
                                                        width: 2),
                                                  ))),
                                          child: Text(
                                            'تأكيد الرحلة',
                                            // style: TextStyle(color: Colors.white),
                                          ),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const BusRoutes()),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
/////////////////////////////////////////////  THE MAIN DRIVER SCREEN  ////////////////////////////////////////////////////