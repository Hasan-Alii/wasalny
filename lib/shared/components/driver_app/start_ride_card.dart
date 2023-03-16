import 'package:flutter/material.dart';
import '../../styles/colors.dart';

class startRideCard extends StatelessWidget {
  final int thh;
  final int tmm;
  final int tss;
  final int tripNo;
  final int passengerNo;

  const startRideCard({
    required this.thh,
    required this.tmm,
    required this.tss,
    required this.passengerNo,
    required this.tripNo
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
                          '126',
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
                          '07',
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
                          '07',
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 30,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        Text(
                          ' am',
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
                  Icon(
                    Icons.alarm,
                    color: Colors.yellow,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '$thh',
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        ' : ',
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        '$tmm',
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        ' : ',
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Text(
                        '$tss',
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),

                    ],
                  ),
                  Text(
                    'Left To Start The Ride',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Trip No. ',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                      '$tripNo',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      )
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$passengerNo',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                      ' Passenger Booked',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      )
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'startStation',
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
                    'dest',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ],
              ),
              //addStationToRoute(station: 'zzz', hh: 12, mm: 12, time: 'am')
            ],
          ),
        ),
      ),
    );
  }
}
