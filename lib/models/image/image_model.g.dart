// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageModel$Impl _$$ImageModel$ImplFromJson(Map<String, dynamic> json) =>
    _$ImageModel$Impl(
      description: json['alt_description'] as String,
      createdAt: json['created_at'] as String,
      urls: ImageUrlModel.fromJson(json['urls'] as Map<String, dynamic>),
      likes: json['likes'] as int,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImageModel$ImplToJson(_$ImageModel$Impl instance) =>
    <String, dynamic>{
      'alt_description': instance.description,
      'created_at': instance.createdAt,
      'urls': instance.urls,
      'likes': instance.likes,
      'user': instance.user,
    };
