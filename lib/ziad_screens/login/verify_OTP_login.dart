import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:uber/ziad_screens/login/phone_login.dart';

import '../../shared/styles/colors.dart';

class OTPLoginScreen extends StatefulWidget {
  const OTPLoginScreen({Key? key}) : super(key: key);

  @override
  State<OTPLoginScreen> createState() => _OTPLoginScreenState();
}

class _OTPLoginScreenState extends State<OTPLoginScreen> {

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    var otp = "";

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_rounded),
          color: Colors.black,
        ),
      ),
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
              Pinput(
                length: 6,
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onChanged: (value)
                {
                    otp = value;
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 45.0,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    try
                    {
                      // Create a PhoneAuthCredential with the code
                      PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: PhoneOTPLoginScreen.verify, smsCode: otp);

                      // Sign the user in (or link) with the credential
                      await auth.signInWithCredential(credential);
                      
                      Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
                    }
                    catch(e){
                      print("Wrong otp");
                    }

                  },
                  child: Text(
                    'Verify phone number',
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: loginBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, 'phone_login', (route) => false);
                      },
                      child: Text(
                        'Edit Phone Number ?',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
}}
