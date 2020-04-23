export 'package:bees_student/services/auth_service.dart';
export 'package:bees_student/services/student_service.dart';
export 'package:bees_student/services/package_service.dart';

export 'package:cloud_firestore/cloud_firestore.dart';
export 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Service {
  static final FirebaseAuth authorization = FirebaseAuth.instance;
  static final Firestore firestore = Firestore.instance;

  static final CollectionReference studentCollectionReference =
      firestore.collection("student");
  static final CollectionReference packageCollectionReference =
      firestore.collection("package");
}
