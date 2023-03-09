import 'package:flutter/material.dart';
import 'package:uber/shared/styles/colors.dart';

class DailyBusCard extends StatelessWidget {

  final String uniName ;

  const DailyBusCard({
    required this.uniName
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 50,
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
              Navigator.pushNamedAndRemoveUntil(context, '/avail_buses', (route) => false);
            },
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$uniName',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
