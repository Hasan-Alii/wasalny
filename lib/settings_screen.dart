import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uber/functions/CRUD/read.dart';

class SettingsPageWidget extends StatefulWidget {
  @override
  _SettingsPageWidgetState createState() => _SettingsPageWidgetState();
}

class _SettingsPageWidgetState extends State<SettingsPageWidget> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _languageController =
      TextEditingController(text: 'English');

  bool _isEnable = false;

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  Future<Map<String, dynamic>> _fetchUserData() async {
    try {
      final userData = await getUserData();
      setState(() {
        _nameController.text =
            '${userData['firstName']} ${userData['lastName']}';
        _emailController.text = userData['email'];
        _phoneController.text = '+20' + userData['phoneNumber'];
      });
      return userData; // add a null check using the null-aware operator
    } on Exception catch (e) {
      print('Failed to retrieve user data: $e');
      return {}; // return an empty map in case of error
    }
  }

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
            child: FutureBuilder<Map<String, dynamic>>(
                future: _fetchUserData(),
                builder: (context, snapshot) {
                  return SingleChildScrollView(
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
                        Row(
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16, 16, 16, 16),
                              child: Text(
                                _nameController.text,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 24,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ), //image and name

                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 24, 0, 0),
                                child: TextField(
                                  onSubmitted: (_) {
                                    setState(() {
                                      _isEnable = false;
                                    });
                                  },
                                  controller: _phoneController,
                                  enabled: _isEnable,
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                    border: InputBorder.none,
                                    labelText: 'Phone',
                                    hintText: '(+20)1000000000',
                                    hintStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF040C4D),
                                    ),
                                  ),
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF040C4D),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.mode_edit_outlined,
                                  color: Color(0xFF040C4D),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isEnable = true;
                                  });
                                })
                          ],
                        ), //phone
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                onSubmitted: (_) {
                                  setState(() {
                                    _isEnable = false;
                                  });
                                },
                                controller: _emailController,
                                enabled: _isEnable,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none,
                                  labelText: 'Email',
                                  hintText: 'Add your Email',
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF040C4D),
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF040C4D),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.mode_edit_outlined,
                                  color: Color(0xFF040C4D),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isEnable = true;
                                  });
                                })
                          ],
                        ), //email
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                onSubmitted: (_) {
                                  setState(() {
                                    _isEnable = false;
                                  });
                                },
                                controller: _nameController,
                                enabled: _isEnable,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none,
                                  labelText: 'Name',
                                  hintText: 'Name',
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF040C4D),
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF040C4D),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.mode_edit_outlined,
                                  color: Color(0xFF040C4D),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isEnable = true;
                                  });
                                })
                          ],
                        ), //city
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                onSubmitted: (_) {
                                  setState(() {
                                    _isEnable = false;
                                  });
                                },
                                controller: _languageController,
                                enabled: _isEnable,
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none,
                                  labelText: 'Language',
                                  hintText: 'English',
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF040C4D),
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF040C4D),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.mode_edit_outlined,
                                  color: Color(0xFF040C4D),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isEnable = true;
                                  });
                                })
                          ],
                        ), //language

                        Divider(
                          thickness: 0.7,
                          height: 20,
                          color: Colors.grey,
                        ), //divider
                        Container(
                          width: 84,
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
                        ), //sign out button
                      ],
                    ),
                  );
                }),
          ),
        ));
  }
}
