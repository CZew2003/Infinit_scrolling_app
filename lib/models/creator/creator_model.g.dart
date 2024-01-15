// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatorModel$Impl _$$CreatorModel$ImplFromJson(Map<String, dynamic> json) =>
    _$CreatorModel$Impl(
      links: LinksModel.fromJson(json['links'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CreatorModel$ImplToJson(_$CreatorModel$Impl instance) =>
    <String, dynamic>{
      'links': instance.links,
      'name': instance.name,
    };
