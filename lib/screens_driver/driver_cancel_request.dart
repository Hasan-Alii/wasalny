// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class DriverCancelRequestButton extends StatefulWidget {


  @override
  State<DriverCancelRequestButton> createState() => _DriverCancelRequestButtonState();
}

class _DriverCancelRequestButtonState extends State<DriverCancelRequestButton> {
  int _value = 1;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional
          .fromSTEB(8, 0, 0, 0),
      child: TextButton(
        style: ButtonStyle(
            backgroundColor:
            MaterialStateProperty.all<
                Color>(Color(0xFFFFCDD2)),
            foregroundColor:
            MaterialStateProperty.all<
                Color>(Colors.red),
            shape: MaterialStateProperty.all<
                RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(20.0),
                  side: BorderSide(
                      color: Colors.red,
                      width: 2),
                ))),
        child: Text(
          'رفض',
          // style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment
                        .end,
                    children: [
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .end,
                        children: [
                          Expanded(
                            child: Container(
                              color: Colors
                                  .red[100],
                              padding:
                              EdgeInsets
                                  .all(8),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment
                                    .end,
                                children: [
                                  Text(
                                    'رحلة مرفوضة',
                                    style: TextStyle(
                                        color: Colors
                                            .red,
                                        fontSize:
                                        20),
                                  ),
                                  Text(
                                    'كده انت هترفض الرحلة ومش هيتفع تكملها',
                                    style: TextStyle(
                                        color: Colors
                                            .black,
                                        fontSize:
                                        12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment
                            .end,
                        children: [
                          Expanded(
                            child: Container(
                              color:
                              Colors.red,
                              padding:
                              EdgeInsets
                                  .all(8),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .end,
                                children: [
                                  Text(
                                    'ممكن يبقى فيه خصم على الخطوة دي',
                                    style: TextStyle(
                                        color: Colors
                                            .white,
                                        fontSize:
                                        12),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Icons
                                        .warning_amber,
                                    color: Colors
                                        .white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'سبب الرفض؟',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 15),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      Column(
                        crossAxisAlignment:
                        CrossAxisAlignment
                            .end,
                        children: [
                          ListTile(
                            leading: Radio(
                                value: 1,
                                groupValue:
                                _value,
                                onChanged:
                                    (_) {
                                  setState(
                                          () {
                                        _value =
                                        1;
                                      });
                                }),
                            title: Text(
                                'العربية عطلت'),
                            onTap: () {
                              Navigator.pop(
                                  context);
                            },
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          ListTile(
                            leading: Radio(
                                value: 2,
                                groupValue:
                                _value,
                                onChanged:
                                    (_) {
                                  setState(
                                          () {
                                        _value =
                                        2;
                                      });
                                }),
                            title: Text(
                                'مشكلة في الخط'),
                            onTap: () {
                              Navigator.pop(
                                  context);
                            },
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          ListTile(
                            leading: Radio(
                                value: 3,
                                groupValue:
                                _value,
                                onChanged:
                                    (_) {
                                  setState(
                                          () {
                                        _value =
                                        3;
                                      });
                                }),
                            title: Text(
                                'مشكلة مع الشرطة'),
                            onTap: () {
                              Navigator.pop(
                                  context);
                            },
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          ListTile(
                            leading: Radio(
                                value: 4,
                                groupValue:
                                _value,
                                onChanged:
                                    (_) {
                                  setState(
                                          () {
                                        _value =
                                        4;
                                      });
                                }),
                            title: Text(
                                'الانترنت مش شغال'),
                            onTap: () {
                              Navigator.pop(
                                  context);
                            },
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          ListTile(
                            leading: Radio(
                                value: 5,
                                groupValue:
                                _value,
                                onChanged:
                                    (_) {
                                  setState(
                                          () {
                                        _value =
                                        5;
                                      });
                                }),
                            title: Text(
                                'حصل لي حادثة'),
                            onTap: () {
                              Navigator.pop(
                                  context);
                            },
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          ListTile(
                            leading: Radio(
                                value: 6,
                                groupValue:
                                _value,
                                onChanged:
                                    (_) {
                                  setState(
                                          () {
                                        _value =
                                        6;
                                      });
                                }),
                            title: Text(
                                'اتكلفت برحلة غلط'),
                            onTap: () {
                              Navigator.pop(
                                  context);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
