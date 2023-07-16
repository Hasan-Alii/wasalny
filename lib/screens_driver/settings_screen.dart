import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wasalny/screens_driver/next_station.dart';
import '../main.dart';
import 'read.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class SettingsPageWidget extends StatefulWidget {
  // final String driverEmail;
  // final String driverName;
  // final String driverID;
  // final String driverPhone;

  SettingsPageWidget({
    Key? key,
    // this.driverEmail ='',
    // this.driverName ='',
    // this.driverID ='',
    // this.driverPhone ='',
  }) : super(key: key);

  @override
  _SettingsPageWidgetState createState() => _SettingsPageWidgetState();
}

class _SettingsPageWidgetState extends State<SettingsPageWidget> {
  // String fName = '';
  // String dId = '';
  // String email = '';
  // String phone = '';

  final TextEditingController _nameController =
      TextEditingController(text: dName);
  final TextEditingController _phoneController =
      TextEditingController(text: dPhone);
  final TextEditingController _emailController =
      TextEditingController(text: dEmail);
  final TextEditingController _idController = TextEditingController(text: dId);

  bool _isEnable = false;

  @override
  void initState() {
    super.initState();
    // _fetchUserData();
  }

  // Future<Map<String, dynamic>> _fetchUserData() async {
  //   try {
  //     final DocumentSnapshot<Map<String, dynamic>> userData =
  //     await _firestore.collection('driver').doc(dDoc).get();
  //     if (userData.exists) {
  //       fName = userData.get('driverName');
  //       dId = dDoc;
  //       email = userData.get('email');
  //       phone = userData.get('driverPhone');
  //     }
  //     setState(() {
  //       _nameController.text = fName;
  //       // _emailController.text = userData.get('email');
  //       // _phoneController.text = userData.get('driverPhone');
  //       // _idController.text = userData.get('driverID');
  //     });
  //     return {};
  //   } on Exception catch (e) {
  //     print('Failed to retrieve user data: $e');
  //     return {}; // return an empty map in case of error
  //   }
  // }

  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            // borderRadius: 30,
            // buttonSize: 50,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF040C4D),
              size: 35,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(32, 0, 32, 0),
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Settings',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 40,
                      ),
                    ), //settings
                    Padding(
                      padding: padding2,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/images/UserProfile.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                            child: Text(dName, style: style1),
                          ),
                        ],
                      ),
                    ), //image and name

                    Padding(
                      padding: padding1,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              controller: _phoneController,
                              enabled: _isEnable,
                              decoration: InputDecoration(
                                labelStyle: labelStyle,
                                border: InputBorder.none,
                                labelText: 'Phone',
                              ),
                              style: fieldStyle,
                            ),
                          ),
                        ],
                      ),
                    ), //phone

                    Padding(
                      padding: padding1,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              controller: _emailController,
                              enabled: _isEnable,
                              decoration: InputDecoration(
                                labelStyle: labelStyle,
                                border: InputBorder.none,
                                labelText: 'Email',
                              ),
                              style: fieldStyle,
                            ),
                          ),
                        ],
                      ),
                    ), //email

                    Padding(
                      padding: padding1,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              controller: _idController,
                              enabled: _isEnable,
                              decoration: InputDecoration(
                                labelStyle: labelStyle,
                                labelText: 'Driver ID',
                              ),
                              style: fieldStyle,
                            ),
                          ),
                        ],
                      ),
                    ), //id

                    Divider(
                      thickness: 0.7,
                      height: 20,
                      color: Colors.grey,
                    ), //divider
                    Container(
                      width: 84,
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, '/welcome');
                          },
                          child: Text(
                            'Sign out',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ), //sign out button
                  ],
                ),
              )),
        ));
  }
}

TextStyle style1 = const TextStyle(
  color: Colors.black,
  fontFamily: 'Poppins',
  fontSize: 35,
  fontWeight: FontWeight.bold,
);

TextStyle fieldStyle = const TextStyle(
  color: Color(0xFF040C4D),
  fontFamily: 'Poppins',
  fontSize: 26,
  fontWeight: FontWeight.bold,
);

TextStyle labelStyle = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Colors.grey,
);

Color appBlue = const Color(0xFF040C4D);

EdgeInsetsDirectional padding1 =
    const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0);

EdgeInsetsDirectional padding2 =
const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 16);

// IconButton editing_ic = IconButton(
//     icon: Icon(
//       Icons.mode_edit_outlined,
//       color: Color(0xFF040C4D),
//     ),
//     onPressed: () {
//       // setState(() {
//       //   _isEnable = true;
//     });
