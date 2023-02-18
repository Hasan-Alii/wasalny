import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../shared/styles/colors.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  bool _passwordVisible = false;
  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  //The dispose function is used to clean up any resources that were allocated by the widget, such as streams or animation controllers, to prevent memory leaks.
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFF8FAFC),
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.arrow_back_outlined,
                color: Color(0xFF040C4D),
                size: 30.0,
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 46.0,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: Text(
                  "Welcome back",
                  style: TextStyle(
                    color: Color(0xFF040C4D),
                    fontSize: 36.50,
                    fontFamily: "Sora",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 61.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.5),
                  ),
                  labelText: "Email or username",
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0, bottom: 9.0),
              child: TextFormField(
                controller: passwordController,
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                icon: Icon(
                _passwordVisible
                ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
                ),
                onPressed: _togglePasswordVisibility,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.5),
              ),
              labelText: "Password",
            ),
      ),
    ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 5.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xFF040C4D),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(top: 32.0, right: 32.0, left: 32.0, bottom: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(114.0),
                  color: loginBlue,
                ),
                width: 363.0,
                height: 57.0,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.2,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 24.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(114.0),
                  color: loginWhite,
                ),
                width: 363.0,
                height: 57.0,
                child: FloatingActionButton.extended(
                  backgroundColor: loginWhite,
                  onPressed: (){},
                  icon: Icon(FontAwesomeIcons.google, color: Color(0xFF10405A),),
                  label: Text(
                    "Log in using Google",
                    style: TextStyle(
                        color: Color(0xFF10405A),
                        fontSize: 18.2,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 5.0),
              child: Center(
                child: Text(
                  "Don't have account? Sign up",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF040C4D),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
