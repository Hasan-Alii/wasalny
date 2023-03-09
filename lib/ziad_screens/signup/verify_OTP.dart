import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:uber/ziad_screens/signup/phone.dart';
import '../../functions/saver_user_data.dart';
import '../../shared/styles/colors.dart';

class OTPScreen extends StatefulWidget {

  const OTPScreen({Key? key, required this.password, required this.email, required this.phoneNumber, required this.firstName, required this.lastName,}) : super(key: key);

  final String firstName;
  final String lastName;
  final String password;
  final String email;
  final String phoneNumber;

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {

  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final CollectionReference users = FirebaseFirestore.instance.collection('users');

  final TextEditingController _otpController = TextEditingController();

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
                    try {
                      // Create a PhoneAuthCredential with the code
                      PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: PhoneOTPScreen.verify, smsCode: otp);

                      // Sign the user in (or link) with the credential
                      final UserCredential userCredential = await auth.signInWithCredential(credential);
                      final User user = userCredential.user!;

                      await saveUserDataToFirestore(widget.email, widget.firstName,widget.lastName, widget.password,widget.phoneNumber);

                      Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
                    } catch(e) {
                      print("Wrong OTP");
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
                        Navigator.pushNamedAndRemoveUntil(context, 'phone_signup', (route) => false);
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


