import 'package:flutter/material.dart';

class PaymentPage3Widget extends StatefulWidget {
  @override
  _PaymentPage3WidgetState createState() => _PaymentPage3WidgetState();
}

class _PaymentPage3WidgetState extends State<PaymentPage3Widget> {
  final TextEditingController _controller =
      TextEditingController(text: 'Hasan Ali');
  final TextEditingController _controller1 =
      TextEditingController(text: 'xxxx xxxx xxxx 2082');
  final TextEditingController _controller2 =
      TextEditingController(text: '09/10');
  final TextEditingController _controller3 =
      TextEditingController(text: '426');

  /* [text in parentheses above should be removed, it was added only for clarification] */

  bool _isEnable = false;

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [],
        centerTitle: false,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF040C4D),
            size: 35,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Title(color: Colors.white,
            child: const Text(
              'Add Payment Method',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 27,
              ),
            ), //add payment method
        ),
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
                // const Text(
                //   'Add Payment Method',
                //   style: TextStyle(
                //     color: Colors.black,
                //     fontFamily: 'Poppins',
                //     fontWeight: FontWeight.w600,
                //     fontSize: 27,
                //   ),
                // ), //add payment method


                // Row(
                //   mainAxisSize: MainAxisSize.max,
                //   children: [
                //     Container(
                //       width: 80,
                //       height: 80,
                //       clipBehavior: Clip.antiAlias,
                //       decoration: BoxDecoration(
                //         shape: BoxShape.circle,
                //       ),
                //       child: Image.asset(
                //         'assets/images/UserProfile.png',
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //     Padding(
                //       padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                //       child: Text(
                //         'Hasan Ali',
                //         style: TextStyle(
                //           fontFamily: 'Poppins',
                //           fontSize: 24,
                //           fontWeight: FontWeight.normal,
                //         ),
                //       ),
                //     ),
                //   ],
                // ), //image and name

                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                        child: TextField(
                          onSubmitted: (_) {
                            setState(() {
                              _isEnable = false;
                            });
                          },
                          controller: _controller,
                          enabled: _isEnable,
                          decoration: const InputDecoration(
                            labelStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            labelText: 'Name on card',
                            hintText: 'xxxx xxxx xxxx 2082',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF040C4D),
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            color: Color(0xFF040C4D),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        icon: const Icon(
                          Icons.mode_edit_outlined,
                          color: Color(0xFF040C4D),
                        ),
                        onPressed: () {
                          setState(() {
                            _isEnable = true;
                          });
                        })
                  ],
                ), //name on card
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onSubmitted: (_) {
                          setState(() {
                            _isEnable = false;
                          });
                        },
                        controller: _controller1,
                        enabled: _isEnable,
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                          labelText: 'Card number',
                          hintText: 'Add your Email',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF040C4D),
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          color: Color(0xFF040C4D),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    IconButton(
                        icon: const Icon(
                          Icons.mode_edit_outlined,
                          color: Color(0xFF040C4D),
                        ),
                        onPressed: () {
                          setState(() {
                            _isEnable = true;
                          });
                        })
                  ],
                ), //card number
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onSubmitted: (_) {
                          setState(() {
                            _isEnable = false;
                          });
                        },
                        controller: _controller2,
                        enabled: _isEnable,
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                          labelText: 'City',
                          hintText: 'Cairo',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF040C4D),
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          color: Color(0xFF040C4D),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    IconButton(
                        icon: const Icon(
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
                        controller: _controller3,
                        enabled: _isEnable,
                        decoration: const InputDecoration(
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
                        style: const TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          color: Color(0xFF040C4D),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    IconButton(
                        icon: const Icon(
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

                const Divider(
                  thickness: 0.7,
                  height: 20,
                  color: Colors.grey,
                ), //divider
                Container(
                  width: 84,
                  child: TextButton(
                    onPressed: () {
                      print('Sign out Button pressed');
                    },
                    child: const Text(
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
          ),
        ),
      ),
    );
  }
}
