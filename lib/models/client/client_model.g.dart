// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientModel$Impl _$$ClientModel$ImplFromJson(Map<String, dynamic> json) =>
    _$ClientModel$Impl(
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      pictureUrl: json['pictureUrl'] as String?,
    );

Map<String, dynamic> _$$ClientModel$ImplToJson(_$ClientModel$Impl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'displayName': instance.displayName,
      'pictureUrl': instance.pictureUrl,
    };
