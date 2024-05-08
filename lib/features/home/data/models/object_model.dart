import 'data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'object_model.freezed.dart';
part 'object_model.g.dart';

@freezed
class ObjectModel with _$ObjectModel {
  factory ObjectModel({
    String? id,
    String? name,
    DataModel? data,
  }) = _ObjectModel;

  factory ObjectModel.fromJson(Map<String, dynamic> json) =>
      _$ObjectModelFromJson(json);
}
