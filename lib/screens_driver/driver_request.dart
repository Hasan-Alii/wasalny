import 'package:cloud_firestore/cloud_firestore.dart';

class DriverTrips {
  static final CollectionReference _tripsCollection =
  FirebaseFirestore.instance.collection('trip');

  static Stream<QuerySnapshot> getTripsStream() {
    return _tripsCollection.snapshots();
  }
}
