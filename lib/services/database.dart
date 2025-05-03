import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final CollectionReference userCollection = FirebaseFirestore.instance
      .collection('users');

  Future updateUserData(String uid, String name, String email) async {
    return await userCollection.doc(uid).set({'name': name, 'email': email});
  }
}
