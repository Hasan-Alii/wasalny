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
            chooseBusCard(shh: '08', smm: '00', ehh: '08', emm: '45', s_point: 'Nasr City', e_point: 'BUE', bus_no: '01', cost: 17),
            chooseBusCard(shh: '08', smm: '00', ehh: '08', emm: '45', s_point: 'Nasr City', e_point: 'BUE', bus_no: '02', cost: 17),
            chooseBusCard(shh: '08', smm: '00', ehh: '08', emm: '45', s_point: 'Nasr City', e_point: 'BUE', bus_no: '03', cost: 17),
            chooseBusCard(shh: '08', smm: '00', ehh: '08', emm: '45', s_point: 'Nasr City', e_point: 'BUE', bus_no: '04', cost: 17),
            chooseBusCard(shh: '08', smm: '00', ehh: '08', emm: '45', s_point: 'Nasr City', e_point: 'BUE', bus_no: '05', cost: 17),
            chooseBusCard(shh: '08', smm: '00', ehh: '08', emm: '45', s_point: 'Nasr City', e_point: 'BUE', bus_no: '06', cost: 17),
            chooseBusCard(shh: '08', smm: '00', ehh: '08', emm: '45', s_point: 'Nasr City', e_point: 'BUE', bus_no: '07', cost: 17),
            chooseBusCard(shh: '08', smm: '00', ehh: '08', emm: '45', s_point: 'Nasr City', e_point: 'BUE', bus_no: '08', cost: 17),
          ],
        ),
      ),
    );

  }
}
