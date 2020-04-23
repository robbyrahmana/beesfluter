// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PackageModel> _$packageModelSerializer =
    new _$PackageModelSerializer();

class _$PackageModelSerializer implements StructuredSerializer<PackageModel> {
  @override
  final Iterable<Type> types = const [PackageModel, _$PackageModel];
  @override
  final String wireName = 'PackageModel';

  @override
  Iterable<Object> serialize(Serializers serializers, PackageModel object,
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
    return result;
  }

  @override
  PackageModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PackageModelBuilder();

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
      }
    }

    return result.build();
  }
}

class _$PackageModel extends PackageModel {
  @override
  final String id;
  @override
  final String name;

  factory _$PackageModel([void Function(PackageModelBuilder) updates]) =>
      (new PackageModelBuilder()..update(updates)).build();

  _$PackageModel._({this.id, this.name}) : super._();

  @override
  PackageModel rebuild(void Function(PackageModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackageModelBuilder toBuilder() => new PackageModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackageModel && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PackageModel')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class PackageModelBuilder
    implements Builder<PackageModel, PackageModelBuilder> {
  _$PackageModel _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  PackageModelBuilder();

  PackageModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackageModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PackageModel;
  }

  @override
  void update(void Function(PackageModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PackageModel build() {
    final _$result = _$v ?? new _$PackageModel._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
