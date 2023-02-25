import 'package:flutter/material.dart';
import '../../shared/components/student_app/choose_bus_card.dart';
import '../../shared/styles/colors.dart';

class ChooseBusScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: loginBlue,
          ),
          title: Text(
            'Choose Your Bus',
            style: TextStyle(
              color: loginBlue
            ),
          ),
          bottom: TabBar(
              isScrollable: true,
              labelColor: loginBlue,
              unselectedLabelColor: dbasicGreyColor,

              tabs:[
                Tab(
                  text: 'Today',
                ),
                Tab(
                  text: 'day 1',
                ),
                Tab(
                  text: 'day 2',
                ),
                Tab(
                  text: 'day 3',
                ),
                Tab(
                  text: 'day 4',
                ),
                Tab(
                  text: 'day 5',
                ),
                Tab(
                  text: 'day 6',
                ),
                Tab(
                  text: 'day 7',
                ),
              ]),
        ),

        body: ListView(
          children: [
            chooseBusCard(shh: 55, smm: 55, ehh: 55, emm: 55, s_point: 'Nasr City', e_point: 'BUE', bus_no: 555, cost: 55),
            chooseBusCard(shh: 55, smm: 55, ehh: 555, emm: 55, s_point: 'Nasr City', e_point: 'BUE', bus_no: 555, cost: 55),
            chooseBusCard(shh: 55, smm: 55, ehh: 555, emm: 55, s_point: 'Nasr City', e_point: 'BUE', bus_no: 555, cost: 55),
            chooseBusCard(shh: 55, smm: 55, ehh: 555, emm: 55, s_point: 'Nasr City', e_point: 'BUE', bus_no: 555, cost: 55),
            chooseBusCard(shh: 55, smm: 55, ehh: 555, emm: 55, s_point: 'Nasr City', e_point: 'BUE', bus_no: 555, cost: 55),
            chooseBusCard(shh: 55, smm: 55, ehh: 555, emm: 55, s_point: 'Nasr City', e_point: 'BUE', bus_no: 555, cost: 55),
            chooseBusCard(shh: 55, smm: 55, ehh: 555, emm: 55, s_point: 'Nasr City', e_point: 'BUE', bus_no: 555, cost: 55),
            chooseBusCard(shh: 55, smm: 55, ehh: 555, emm: 55, s_point: 'Nasr City', e_point: 'BUE', bus_no: 555, cost: 55),
          ],
        ),
      ),
    );

  }
}
