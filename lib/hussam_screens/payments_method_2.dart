import 'package:flutter/material.dart';

class PaymentMethods2Widget extends StatefulWidget {

  @override
  _PaymentMethods2WidgetState createState() => _PaymentMethods2WidgetState();
}

class _PaymentMethods2WidgetState extends State<PaymentMethods2Widget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          // borderRadius: 30,
          // buttonSize: 50,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF040C4D),
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Payment Methods',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xFF040C4D),
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF040C4D),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            '24/10',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ), //date
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            'xxxx xxxx xxxx 2082',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ), //credit card number
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            'Ahmed M.',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ), //name
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          print('1st Button pressed');
                        },
                        child: Text(''),
                      ),
                    ),
                  ],
                ),
              ),
            ), //1st button

            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF040C4D),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            '24/10',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ), //date
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            'xxxx xxxx xxxx 2082',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ), //credit card number
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            'Ahmed M.',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ), //name
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          print('2nd Button pressed');
                        },
                        child: Text(''),
                      ),
                    ),
                  ],
                ),
              ),
            ), //2nd button

            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF040C4D),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            '24/10',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ), //date
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            'xxxx xxxx xxxx 2082',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ), //credit card number
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            'Ahmed M.',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ), //name
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          print('3rd Button pressed');
                        },
                        child: Text(''),
                      ),
                    ),
                  ],
                ),
              ),
            ), //3rd button
          ],
        ),
      ),
    );
  }
}