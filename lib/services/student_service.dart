import 'package:bees_student/models/model.dart';
import 'package:bees_student/services/service.dart';

class StudentService {
  final CollectionReference _reference = Service.studentCollectionReference;

  Future<StudentModel> getByUid(String uid) async {
    return await _reference.document(uid).get().then((snapshot) {
      var data =
          serializers.deserializeWith(StudentModel.serializer, snapshot.data);
      return data;
    }).catchError((onError) {
      print(onError);
      return StudentModel();
    });
  }
}
