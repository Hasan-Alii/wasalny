import 'package:flutter/material.dart';
import '../../styles/colors.dart';

class todayRouteCard extends StatelessWidget {

  final int busNo;
  final int thh;
  final int tmm;
  final String time;
  final String startStation;
  final String dest;
  final addStationToRoute s1;
  final addStationToRoute s2;
  //final List<addStationToRoute>sss;

  const todayRouteCard({
    required this.busNo,
    required this.thh,
    required this.tmm,
    required this.time,
    required this.startStation,
    required this.dest,
    required this.s1,
    required this.s2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        //height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: loginBlue,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(2,2),
                blurRadius: 10,
                spreadRadius:0
            ),
          ],
        ),
        child: MaterialButton(
          onPressed: (){},
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize:MainAxisSize.min ,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.directions_bus,
                            color: Colors.yellow,
                            size: 30,
                          ),
                          Text(
                            '$busNo',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 30,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '$thh',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 30,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            ' : ',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 30,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            '$tmm',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 30,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            ' $time',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 30,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$startStation',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '$dest',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
                s1,
                s2,
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class addStationToRoute extends StatelessWidget {

  final String station;
  final int hh;
  final int mm;
  final String time;

  const addStationToRoute({
    required this.station,
    required this.hh,
    required this.mm,
    required this.time
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.keyboard_double_arrow_right,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '$station',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Text(
              '$hh',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
              ),
            ),
            Text(
              ' : ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
              ),
            ),
            Text(
              '$mm',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
              ),
            ),
            Text(
              ' $time',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
              ),
            ),
          ],
        ),
      ],
    );
  }
}
