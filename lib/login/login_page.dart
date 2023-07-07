import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wasalny/login/text_field.dart';
import 'package:wasalny/screens_driver/maher%20screen.dart';
import '../main.dart';
import '../screens_driver/driver_home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../screens_driver/navigation_bar.dart';

// String theUsername = 'none';
// String theEmail = 'none';
// String thePhone = 'none';
// String theID = 'none';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController(text: 'ziad@gmail.com');
  final passwordController = TextEditingController(text: 'ziad@gmail.com');

  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Image.asset('assets/images/MainPageBus2.png', color: Color(0xFF040C4D)),
                  const SizedBox(height: 50),
                  Text(
                    "Welcome To Driver Application",
                    // "Welcome To UniBus Driver",
                    style: TextStyle(
                      color: appBlue,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'ziad@gmail.com',
                        labelText: 'Email Address / Phone Number',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: TextFormField(
                      obscureText: pass,
                      controller: passwordController,
                      decoration: InputDecoration(
                          hintText: '12345678',
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                pass = !pass;
                              });
                            },
                            icon: Icon(
                                pass ? Icons.visibility_off : Icons.visibility),
                          )),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: [
                  //       Text(
                  //         'Forgot Password?',
                  //         style: TextStyle(color: Colors.grey[600]),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  const SizedBox(height: 25),
                  Container(
                    height: 60,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                              Text('loading', style: TextStyle(color: Colors.black),),
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.white,
                            ),
                          );
                          FirebaseFirestore.instance
                              .collection('driver')
                              .get()
                              .then((value) {
                            bool loggedIn = false;
                            value.docs.forEach((element) {
                              if (element.data()['driverMail'] ==
                                      emailController.text ||
                                  element.data()['driverPhone'] ==
                                      emailController.text) {
                                if (element.data()['driverPass'] ==
                                    passwordController.text) {
                                  loggedIn = true;
                                  // theEmail = emailController.text;
                                  // theUsername = element.data()['driverName'];
                                  // thePhone = element.data()['driverPhone'];
                                  // theID = element.data()['driverID'];
                                  dName =element.data()['driverName'];;
                                  dPhone=element.data()['driverPhone'];
                                  dId=element.data()['driverID'];;
                                  dEmail = emailController.text;
                                  dDoc = element.id;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => NavBarWidget(
                                            // driverEmail: emailController.text,
                                              )));
                                }
                              }
                            });
                            if (!loggedIn) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content:
                                      Text('Incorrect username or password'),
                                  duration: Duration(seconds: 2),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          });
                        }, /////////////////////////////////////
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black, // Background color
                        ),
                        child: const Text(
                          'LogIn',
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
