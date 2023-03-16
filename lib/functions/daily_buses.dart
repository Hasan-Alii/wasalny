import 'package:cloud_firestore/cloud_firestore.dart';

class DailyBusService {
  static final CollectionReference _busesCollection =
  FirebaseFirestore.instance.collection('uni');

  static Stream<QuerySnapshot> getBusesStream() {
    return _busesCollection.snapshots();
  }
}
