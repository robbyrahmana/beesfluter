import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'student_model.g.dart';

abstract class StudentModel
    implements Built<StudentModel, StudentModelBuilder> {
  @nullable
  String get id;

  @nullable
  String get name;

  @nullable
  String get grade;

  @nullable
  String get phone;

  @nullable
  String get email;

  @nullable
  String get image;

  StudentModel._();

  static Serializer<StudentModel> get serializer => _$studentModelSerializer;

  factory StudentModel([void Function(StudentModelBuilder) updates]) =
      _$StudentModel;
}
