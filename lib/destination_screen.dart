import 'package:flutter/material.dart';

class DestinationPageWidget extends StatefulWidget {
  @override
  _DestinationPageWidgetState createState() => _DestinationPageWidgetState();
}

class _DestinationPageWidgetState extends State<DestinationPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          backgroundColor: Color(0xFF040C4D),
          automaticallyImplyLeading: false,
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 14),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                          child: Text(
                            'Back',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Image.asset(
                            'assets/images/PinBus.png',
                            width: 50,
                            height: 55,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 55, 8),
                                child: TextFormField(
                                  // controller: _model.textController1,
                                  onTap: () {
                                    print('Unnamed Road text field pressed');
                                  },
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Unnamed Road',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF10316B),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 55, 8),
                                child: TextFormField(
                                  // controller: _model.textController1,
                                  onTap: () {
                                    print(
                                        'Go to destination text field pressed');
                                  },
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Go to destination',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    filled: true,
                                    fillColor: Color(0xFF10316B),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 2,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [

            Expanded(
              child: Container(
                width: double.infinity,
                // decoration: BoxDecoration(
                //   color: Colors.white,
                // ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 0),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 10, 10, 10),
                                    child: Icon(
                                      Icons.star_sharp,
                                      color: Color(0xFF040C4D),
                                      size: 24,
                                    ),
                                  ),
                                  Text(
                                    'Saved Places',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF040C4D),
                                      fontSize: 18,
                                    ),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Color(0xFF040C4D),
                                    size: 24,
                                  ),
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: TextButton(
                                  child: Text(''),
                                  onPressed: () {
                                    print('Saved Places Button pressed');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ), //saved places

                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 0),
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Stack(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 8, 8, 8),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        'assets/images/star.png',
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 8, 0, 8),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'El-Hegaz Square',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF040C4D),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            'El-Nozha, Cairo Governorate',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF040C4D),
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: TextButton(
                                  child: Text(''),
                                  onPressed: () {
                                    print('El-Hegaz Square Button pressed');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ), //el hegaz square
                    ],
                  ),
                ),
              ),
            ), //middle buttons

            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(32, 32, 32, 32),
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xFF040C4D),
                ),
                child: TextButton(
                  onPressed: () {
                    print('Confirm Button pressed');
                    Navigator.pushNamedAndRemoveUntil(context, '/avail_buses', (route) => false);
                  },
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ), //confirm button
          ],
        ),
      ),
    );
  }
}