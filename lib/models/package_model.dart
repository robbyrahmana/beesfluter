import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'package_model.g.dart';

abstract class PackageModel
    implements Built<PackageModel, PackageModelBuilder> {
  @nullable
  String get id;

  @nullable
  String get name;

  PackageModel._();

  static Serializer<PackageModel> get serializer => _$packageModelSerializer;

  factory PackageModel([void Function(PackageModelBuilder) updates]) =
      _$PackageModel;
}
