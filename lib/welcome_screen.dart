import 'package:flutter/material.dart';

class WelcomePageWidget extends StatefulWidget {
  @override
  _WelcomePageWidgetState createState() => _WelcomePageWidgetState();
}

class _WelcomePageWidgetState extends State<WelcomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF040C4D),
        title: Text(
          'Wasalny',
        ),
        titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xFF040C4D),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 16),
                  child: Row(
                    // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/WelcomePageBus.png',
                        width: 267,
                        height: 300,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ), //bus image

                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                        child: Text(
                          'Let\'s\nget started',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w300,
                            // lineHeight: 1.2,
                          ),
                        ),
                      ), //lets get started
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                        child: Text(
                          'Enjoy your ride',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ), //enjoy your ride
                    ],
                  ),
                ), //middle text

                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32, 10, 32, 10),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(114),
                        color: Color(0xFF002D7C)),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        // padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () => Navigator.pushNamed(context, '/phoneLogin'),
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ), //log in button

                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(32, 10, 32, 10),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(114),
                      color: Colors.white,
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        // padding: const EdgeInsets.all(16.0),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                      onPressed: () => Navigator.pushNamed(context, '/register'),
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          color: Color(0xFF002D7C),
                        ),
                      ),
                    ),
                  ),
                ), //sign up button
              ],
            ),
          ),
        ),
      ),
    );
  }
}