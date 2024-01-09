// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModel$Impl _$$UserModel$ImplFromJson(Map<String, dynamic> json) =>
    _$UserModel$Impl(
      links: LinksModel.fromJson(json['links'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$UserModel$ImplToJson(_$UserModel$Impl instance) =>
    <String, dynamic>{
      'links': instance.links,
      'name': instance.name,
    };
