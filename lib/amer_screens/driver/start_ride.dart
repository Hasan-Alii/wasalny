import 'package:flutter/material.dart';
import '../../shared/components/driver_app/start_ride_card.dart';
import '../../shared/styles/colors.dart';


class startRide extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: loginBlue,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          startRideCard(thh: 07, tmm: 07, tss: 07, passengerNo: 13, tripNo: 1999),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              width: 300,
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Start Ride',
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
