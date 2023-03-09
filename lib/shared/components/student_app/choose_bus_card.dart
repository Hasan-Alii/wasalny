import 'package:flutter/material.dart';

import '../../styles/colors.dart';

class chooseBusCard extends StatelessWidget {

  final String shh ;  // Start hour
  final String smm;  // Start min
  final bool stime_am = true; // start time am,pm
  final String ehh;  // End hour
  final String emm;  // End min
  final bool etime_am = true; // End time am,pm
  final String s_point;
  final String e_point;
  final String bus_no;
  final double cost;


  const chooseBusCard({
    required this.shh,
    required this.smm,
    required this.ehh,
    required this.emm,
    required this.s_point,
    required this.e_point,
    required this.bus_no,
    required this.cost,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 120,
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
          onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, '/bookTrip', (route) => false);
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '$shh' ,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                ' : ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                '$smm',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                ' am',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                           // crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.circle,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '$s_point',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ),
                Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '$ehh',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                ' : ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                '$emm',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                              Text(
                                ' pm',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 15,
                              ),
                              Text(
                                '$e_point',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center ,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.bus_alert_rounded,
                        color: Colors.yellowAccent,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '$bus_no',
                        style: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        '$cost',
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'EGP',
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
