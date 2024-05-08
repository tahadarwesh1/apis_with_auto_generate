// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ObjectModelImpl _$$ObjectModelImplFromJson(Map<String, dynamic> json) =>
    _$ObjectModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ObjectModelImplToJson(_$ObjectModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'data': instance.data,
    };
