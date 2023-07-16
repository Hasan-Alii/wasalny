import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> checkIfPhoneNumberExists(String phoneNumber) async {
  final snapshot = await FirebaseFirestore.instance
      .collection('users')
      .where('phone', isEqualTo: phoneNumber)
      .get();
  return snapshot.docs.isNotEmpty;
}