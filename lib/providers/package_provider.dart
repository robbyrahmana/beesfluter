import 'package:bees_student/models/model.dart';
import 'package:bees_student/services/service.dart';
import 'package:flutter/foundation.dart';

class PackageProvider with ChangeNotifier {
  final PackageService _packageService = PackageService();

  Stream<List<PackageModel>> streamListPackage() {
    return _packageService.streamListPackage();
  }
}
