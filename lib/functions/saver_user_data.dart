import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:crypto/crypto.dart';

Future<void> saveUserDataToFirestore(String email, String firstName,String lastName, String password, String phoneNumber) async {
  try {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    String hashedPassword = sha256.convert(utf8.encode(password)).toString();
    await FirebaseFirestore.instance.collection('users').doc(userId).set({
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'password': hashedPassword,
      'phone_number': phoneNumber,
    });
  } catch (e) {
    print('Error saving user data: $e');
  }
}


Future<bool> isPhoneNumberAlreadyUsed(String phoneNumber) async {
  final QuerySnapshot result = await FirebaseFirestore.instance
      .collection('users')
      .where('phone_number', isEqualTo: phoneNumber)
      .limit(1)
      .get();
  final List<DocumentSnapshot> documents = result.docs;
  return documents.isNotEmpty;
}

Future<bool> isEmailAddressAlreadyUsed(String email) async {
final QuerySnapshot result = await FirebaseFirestore.instance
      .collection('users')
      .where('email', isEqualTo: email)
      .limit(1)
      .get();
  final List<DocumentSnapshot> documents = result.docs;
  return documents.isNotEmpty;
}

