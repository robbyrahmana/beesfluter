import 'package:bees_student/models/model.dart';
import 'package:bees_student/services/service.dart';

class PackageService {
  final CollectionReference _reference = Service.packageCollectionReference;

  Stream<List<PackageModel>> streamListPackage() {
    return _reference.snapshots().map((stream) {
      return stream.documents.map((snapshot) {
        return serializers.deserializeWith(
            PackageModel.serializer, snapshot.data);
      }).toList();
    }).handleError((error) {
      print(error);
      return [];
    });
  }
}
