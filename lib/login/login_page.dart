import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wasalny/login/text_field.dart';
import '../screens_driver/driver_home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  bool pass= true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Image.asset('assets/images/mobile-app.png'),
                  const SizedBox(height: 50),
                  Text(
                    "Welcome To Driver App",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 25),
                TextFormField(
                  controller: usernameController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email Address / Phone Number',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                  const SizedBox(height: 10),
                TextFormField(
                  obscureText: pass,
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(onPressed:(){setState(() {
                        pass=!pass;
                      });} ,icon: Icon(pass ? Icons.visibility_off : Icons.visibility),)
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
                          FirebaseFirestore.instance
                              .collection('driver')
                              .get()
                              .then((value) {
                            bool loggedIn = false;
                            value.docs.forEach((element){
                              if(element.data()['driverMail']==usernameController.text||element.data()['driverPhone']==usernameController.text)
                              {
                                if(element.data()['driverPass']==passwordController.text)
                                {
                                  loggedIn = true;
                                  Navigator.push(context, MaterialPageRoute(builder: (context)
                                  => DriverHomePage()));
                                }
                              }
                            });
                            if(!loggedIn){
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Incorrect username or password'),
                                  duration: Duration(seconds: 2),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            }
                          });
                        },/////////////////////////////////////
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