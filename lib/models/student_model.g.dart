// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StudentModel> _$studentModelSerializer =
    new _$StudentModelSerializer();

class _$StudentModelSerializer implements StructuredSerializer<StudentModel> {
  @override
  final Iterable<Type> types = const [StudentModel, _$StudentModel];
  @override
  final String wireName = 'StudentModel';

  @override
  Iterable<Object> serialize(Serializers serializers, StudentModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.grade != null) {
      result
        ..add('grade')
        ..add(serializers.serialize(object.grade,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  StudentModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StudentModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'grade':
          result.grade = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StudentModel extends StudentModel {
  @override
  final String id;
  @override
  final String name;
  @override
  final String grade;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String image;

  factory _$StudentModel([void Function(StudentModelBuilder) updates]) =>
      (new StudentModelBuilder()..update(updates)).build();

  _$StudentModel._(
      {this.id, this.name, this.grade, this.phone, this.email, this.image})
      : super._();

  @override
  StudentModel rebuild(void Function(StudentModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StudentModelBuilder toBuilder() => new StudentModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StudentModel &&
        id == other.id &&
        name == other.name &&
        grade == other.grade &&
        phone == other.phone &&
        email == other.email &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), name.hashCode), grade.hashCode),
                phone.hashCode),
            email.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StudentModel')
          ..add('id', id)
          ..add('name', name)
          ..add('grade', grade)
          ..add('phone', phone)
          ..add('email', email)
          ..add('image', image))
        .toString();
  }
}

class StudentModelBuilder
    implements Builder<StudentModel, StudentModelBuilder> {
  _$StudentModel _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _grade;
  String get grade => _$this._grade;
  set grade(String grade) => _$this._grade = grade;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  StudentModelBuilder();

  StudentModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _grade = _$v.grade;
      _phone = _$v.phone;
      _email = _$v.email;
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StudentModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StudentModel;
  }

  @override
  void update(void Function(StudentModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StudentModel build() {
    final _$result = _$v ??
        new _$StudentModel._(
            id: id,
            name: name,
            grade: grade,
            phone: phone,
            email: email,
            image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
