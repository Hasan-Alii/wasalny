import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uber/shared/styles/colors.dart';
import 'package:uber/ziad_screens/signup/verify_OTP.dart';

import '../../functions/saver_user_data.dart';

class PhoneOTPScreen extends StatefulWidget {

  const PhoneOTPScreen({Key? key, required this.password, required this.email, required this.firstName, required this.lastName}) : super(key: key);

  final String firstName;
  final String lastName;
  final String password;
  final String email;
  static String verify = "";

  @override
  State<PhoneOTPScreen> createState() => _PhoneOTPScreenState();
}

class _PhoneOTPScreenState extends State<PhoneOTPScreen> {

  final _formKey = GlobalKey<FormState>();
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
                'We need to register your phone before getting started !',
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
                  onPressed: ()
                  async {
                    final isPhoneNumberUsed = await isPhoneNumberAlreadyUsed(phoneNumber);
                     if (isPhoneNumberUsed) {
                       Fluttertoast.showToast(
                           msg: "Phone number already used. Please login or change your phone number.",
                           toastLength: Toast.LENGTH_LONG,
                           gravity: ToastGravity.BOTTOM,
                           timeInSecForIosWeb: 1,
                           backgroundColor: Colors.red,
                           textColor: Colors.white,
                           fontSize: 16.0
                       );
                     }
                     else{
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: '${countryCodeController.text + phoneNumber}',
                        verificationCompleted: (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          PhoneOTPScreen.verify = verificationId;

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) => OTPScreen(
                            email : widget.email,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            password: widget.password,
                            phoneNumber: phoneNumber,
                          ),
                          ),

                          );
                          },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
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
