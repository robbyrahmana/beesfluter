import 'package:bees_student/models/model.dart';

class UserSession {
  StudentModel _user;

  UserSession._();

  static UserSession instance = UserSession._();

  setUserSession(StudentModel user) {
    _user = user;
  }

  StudentModel get user => _user;
}
