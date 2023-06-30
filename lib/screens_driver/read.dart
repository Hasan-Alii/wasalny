import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../main.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

Future<Map<String, dynamic>> getUserData() async {
  // final User? user = _auth.currentUser;

  // final String userId = user.uid;
  final DocumentSnapshot<Map<String, dynamic>> userData =
      await _firestore.collection('driver').doc(dDoc).get();
  try {
    if (userData.exists) {
      final String fName = userData.get('driverName');
      final String dId = dDoc;
      final String email = userData.get('email');
      final String phone = userData.get('driverPhone');

      return {
        'firstName': fName,
        // 'lastName': dId,
        'email': email,
        'phoneNumber': phone,
      };
    } else {
      throw Exception('User data does not exist.');
    }
  } catch (e) {
    throw Exception('Failed to retrieve user data: $e');
  }

  // throw Exception('User is not authenticated.');
  // throw Fluttertoast.showToast(
  //   msg: "User is not authenticated.",
  //   toastLength: Toast.LENGTH_LONG,
  //   gravity: ToastGravity.BOTTOM,
  //   timeInSecForIosWeb: 2,
  //   backgroundColor: Colors.red,
  //   textColor: Colors.white,
  //   fontSize: 16.0,
}

////////// this page is redundant //////////