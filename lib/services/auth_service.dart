import 'package:bees_student/services/service.dart';

class AuthService {
  final FirebaseAuth _auth = Service.authorization;

  Future<FirebaseUser> login(String email, String password) async {
    return await _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .catchError((error) {
      print(error);
      return null;
    });
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  Future<FirebaseUser> get loggedInUser => _auth.currentUser();
}
