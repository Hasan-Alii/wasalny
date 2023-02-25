import 'package:flutter/material.dart';
import 'package:uber/shared/components/student_app/daily_bus_card.dart';
import 'package:uber/shared/styles/colors.dart';

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
      body: ListView(
        children: [
          DailyBusCard(uniName: 'BUE'),
          DailyBusCard(uniName: 'MIU'),
          DailyBusCard(uniName: 'Ain Shams University'),
          DailyBusCard(uniName: 'AUC'),
          DailyBusCard(uniName: 'Helwan University'),
          DailyBusCard(uniName: 'BUE'),
          DailyBusCard(uniName: 'MIU'),
          DailyBusCard(uniName: 'Ain Shams University'),
          DailyBusCard(uniName: 'AUC'),
          DailyBusCard(uniName: 'Helwan University'),
          DailyBusCard(uniName: 'BUE'),
          DailyBusCard(uniName: 'MIU'),
          DailyBusCard(uniName: 'Ain Shams University'),
          DailyBusCard(uniName: 'AUC'),
          DailyBusCard(uniName: 'Helwan University'),

        ],
      ),
    );
  }
}
