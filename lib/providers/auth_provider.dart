import 'package:bees_student/providers/provider.dart';
import 'package:bees_student/services/service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthProvider with ChangeNotifier {
  final AuthService _authService = AuthService();
  final StudentProvider _studentProvider = StudentProvider();

  bool _isLoggedIn;
  FirebaseUser _firebaseUser;

  AuthProvider() {
    _checkLoggedIn();
  }

  bool get isLoggedIn => _isLoggedIn;
  FirebaseUser get firebaseUser => _firebaseUser;

  Future<void> _checkLoggedIn() async {
    await _authService.loggedInUser.then((user) async {
      if (user != null) {
        _isLoggedIn = true;
        _firebaseUser = user;

        // Set user session for logged in user
        await _studentProvider.setUserSession(_firebaseUser.uid);
      } else {
        _isLoggedIn = false;
        _firebaseUser = null;

        // Set user session for not logged in user
        await _studentProvider.setNewUserSession();
      }
    });
    notifyListeners();
  }

  Future login(String email, String password) async {
    return await _authService.login(email, password).then((value) async {
      if (value != null) {
        await _studentProvider.setUserSession(value.uid);
      }
      return value;
    });
  }

  Future logout() async {
    await _authService.logout();
  }
}
