import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../shared/styles/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _passwordVisible = false;
  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  //The dispose function is used to clean up any resources that were allocated by the widget, such as streams or animation controllers, to prevent memory leaks.
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _mobileNumberController.dispose();
    _passwordController.dispose();
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
        ),
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 36.0,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 38.0),
                  child: Text(
                    "Create account",
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
                  controller: _nameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.5),
                    ),
                    labelText: "Name",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.5),
                    ),
                    labelText: "Email address",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: TextFormField(
                  controller: _mobileNumberController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.5),
                    ),
                    labelText: "Mobile number",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 9.0),
                child: TextFormField(
                  controller: _passwordController,
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
                padding: const EdgeInsets.only(top: 28.0, right: 32.0,left: 32.0, bottom: 23.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(114.0),
                    color: loginBlue,
                  ),
                  width: 363.0,
                  height: 57.0,
                  child: TextButton(
                    onPressed: (){},
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.2,
                          fontWeight: FontWeight.w400
                      ),
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
                      "Sign up using Google",
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
                    "Already member? Login",
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
      ),
    );
  }
}
