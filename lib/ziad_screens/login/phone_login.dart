import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uber/shared/styles/colors.dart';

class PhoneOTPLoginScreen extends StatefulWidget {
  const PhoneOTPLoginScreen({Key? key}) : super(key: key);

  static String verify = "";

  @override
  State<PhoneOTPLoginScreen> createState() => _PhoneOTPLoginScreenState();
}

class _PhoneOTPLoginScreenState extends State<PhoneOTPLoginScreen> {

  TextEditingController countryCodeController = TextEditingController();
  var phoneNumber ="";

  @override
  void initState() {
    countryCodeController.text = "+20";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25.0,right: 25.0),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/OTP.png', width: 150.0,height: 150.0,),
              SizedBox(height: 25.0,),
              Text(
                'Phone Verification',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                'We need to verify your phone before logging you in !',
                style: TextStyle(
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: 55.0,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0,color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10.0,),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countryCodeController,
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    Text("|",
                      style: TextStyle(
                        fontSize: 33, color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 10.0,),
                    Expanded(
                      child: TextField(
                        onChanged: (value)
                        {
                          phoneNumber = value;
                        },
                        keyboardType: TextInputType.phone,
                        // maxLength: 10,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Phone number"
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 45.0,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    String phone = '${countryCodeController.text + phoneNumber}';

                    // Make a query to Firestore to check if the phone number exists
                    var snapshot = await FirebaseFirestore.instance
                        .collection('users')
                        .where('phone_number', isEqualTo: phoneNumber)
                        .get();

                    if (snapshot.docs.isNotEmpty) {
                      // Phone number already exists in Firestore, send OTP
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: phone,
                        verificationCompleted: (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          PhoneOTPLoginScreen.verify = verificationId;
                          Navigator.pushNamed(context, "/otpLogin");
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    } else {
                      // Phone number doesn't exist in Firestore, navigate to register page
                      Fluttertoast.showToast(
                          msg: "Phone number is not registered.",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 2,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                      Navigator.pushNamed(context, "/register");
                    }
                  },
                  child: Text(
                    'Send code',
                ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: loginBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
