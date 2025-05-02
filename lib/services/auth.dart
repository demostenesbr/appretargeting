import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:appretargeting/models/user.dart' as app_user;

class AuthService {
  final firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;

  app_user.User? _userFromFirebaseUser(firebase_auth.User? user) {
    return user != null ? app_user.User(uid: user.uid) : null;
  }

  Future signInAnnon() async {
    try {
      firebase_auth.UserCredential result = await _auth.signInAnonymously();
      firebase_auth.User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      return null;
    }
  }
}
