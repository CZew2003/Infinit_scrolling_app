// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModel$Impl _$$UserModel$ImplFromJson(Map<String, dynamic> json) => _$UserModel$Impl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      pictureUrl: json['pictureUrl'] as String?,
    );

Map<String, dynamic> _$$UserModel$ImplToJson(_$UserModel$Impl instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'pictureUrl': instance.pictureUrl,
    };
