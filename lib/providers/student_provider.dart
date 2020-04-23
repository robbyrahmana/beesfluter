import 'package:bees_student/helpers/helper.dart';
import 'package:bees_student/models/model.dart';
import 'package:bees_student/services/service.dart';
import 'package:flutter/foundation.dart';

class StudentProvider with ChangeNotifier {
  final StudentService _studentService = StudentService();

  Future<void> setUserSession(String uid) async {
    await _studentService.getByUid(uid).then((value) {
      // setUserSession
      UserSession.instance.setUserSession(value);
    });
  }

  Future<void> setNewUserSession() async {
    // setUserSession
    UserSession.instance.setUserSession(StudentModel());
  }
}
