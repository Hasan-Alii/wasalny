import 'package:flutter/material.dart';

class PaymentMethods1Widget extends StatefulWidget {

  @override
  _PaymentMethods1WidgetState createState() => _PaymentMethods1WidgetState();
}

class _PaymentMethods1WidgetState extends State<PaymentMethods1Widget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          // borderRadius: 30,
          // buttonSize: 50,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF040C4D),
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Payment Methods',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xFF040C4D),
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body:
      SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF040C4D),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(20, 10, 10, 10),
                          child: Image.asset(
                            'assets/images/CoinDollar.png',
                          ),
                        ), //payment method icon

                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            'Cash',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ), //payment method name
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          print('cash Button pressed');
                        },
                        child: Text(''),
                      ),
                    ),
                  ],
                ),
              ),
            ), //cash button

            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF040C4D),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(20, 10, 10, 10),
                          child: Image.asset(
                            'assets/images/WhiteCreditCard.png',
                          ),
                        ), //payment method icon

                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            'Credit Card',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ), //payment method name
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/credit_cards');
                        },
                        child: Text(''),
                      ),
                    ),
                  ],
                ),
              ),
            ), //credit card button

            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF040C4D),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(20, 10, 10, 10),
                          child: Image.asset(
                            'assets/images/OrangeLeatherWallet.png',
                          ),
                        ), //payment method icon

                        Padding(
                          padding:
                          EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: Text(
                            'Wallet',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ), //payment method name
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          print('wallet Button pressed');
                        },
                        child: Text(''),
                      ),
                    ),
                  ],
                ),
              ),
            ), //wallet button
          ],
        ),
      ),
    );
  }
}