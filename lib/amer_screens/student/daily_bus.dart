import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uber/shared/components/student_app/daily_bus_card.dart';
import 'package:uber/shared/styles/colors.dart';

import '../../functions/daily_buses.dart';

class DailyBusScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_outlined,
          color: loginBlue,
        ),
        title: Text(
          'Daily Buses',
          style: TextStyle(
            color: loginBlue
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: DailyBusService.getBusesStream(),
    builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}');
      }
      if (!snapshot.hasData) {
        return const Text('Loading...');
      }
      return ListView(
        children: snapshot.data!.docs
            .map((DocumentSnapshot document) =>
            DailyBusCard(
              uniName: document['uniName'] as String,
            ))
            .toList(),
      );
    }
    )
    );
  }
}
