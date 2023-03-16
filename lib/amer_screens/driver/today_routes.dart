import 'package:flutter/material.dart';
import '../../shared/components/driver_app/today_routes_card.dart';
import '../../shared/styles/colors.dart';

class todayRoutes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: loginBlue,
        ),
        title: Text(
          'Today\'s Routes',
          style: TextStyle(
            color: loginBlue
          ),
        ),
      ),
      body: ListView(
        children: [
        todayRouteCard(
          busNo: 125,
          thh: 07,
          tmm: 30,
          time: 'am',
          startStation: 'Cairo Stadium',
          dest: 'Shorouk',
          s1: addStationToRoute(station: 'station', hh: 8, mm: 45, time: 'am'),
          s2: addStationToRoute(station: 'station', hh: 8, mm: 45, time: 'am'),
        ),
          todayRouteCard(
            busNo: 125,
            thh: 07,
            tmm: 30,
            time: 'am',
            startStation: 'Cairo Stadium',
            dest: 'Shorouk',
            s1: addStationToRoute(station: 'station', hh: 8, mm: 45, time: 'am'),
            s2: addStationToRoute(station: 'station', hh: 8, mm: 45, time: 'am'),
          ),
          todayRouteCard(
            busNo: 125,
            thh: 07,
            tmm: 30,
            time: 'am',
            startStation: 'Cairo Stadium',
            dest: 'Shorouk',
            s1: addStationToRoute(station: 'station', hh: 8, mm: 45, time: 'am'),
            s2: addStationToRoute(station: 'station', hh: 8, mm: 45, time: 'am'),
          ),
          todayRouteCard(
            busNo: 125,
            thh: 07,
            tmm: 30,
            time: 'am',
            startStation: 'Cairo Stadium',
            dest: 'Shorouk',
            s1: addStationToRoute(station: 'station', hh: 8, mm: 45, time: 'am'),
            s2: addStationToRoute(station: 'station', hh: 8, mm: 45, time: 'am'),
          ),
          todayRouteCard(
            busNo: 125,
            thh: 07,
            tmm: 30,
            time: 'am',
            startStation: 'Cairo Stadium',
            dest: 'Shorouk',
            s1: addStationToRoute(station: 'station', hh: 8, mm: 45, time: 'am'),
            s2: addStationToRoute(station: 'station', hh: 8, mm: 45, time: 'am'),
          ),
          todayRouteCard(
            busNo: 125,
            thh: 07,
            tmm: 30,
            time: 'am',
            startStation: 'Cairo Stadium',
            dest: 'Shorouk',
            s1: addStationToRoute(station: 'station', hh: 8, mm: 45, time: 'am'),
            s2: addStationToRoute(station: 'station', hh: 8, mm: 45, time: 'am'),
          ),
      ],),

    );
  }
}
