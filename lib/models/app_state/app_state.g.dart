// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$Impl _$$AppState$ImplFromJson(Map<String, dynamic> json) => _$AppState$Impl(
      user: json['user'] == null ? null : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      selectedImage:
          json['selectedImage'] == null ? null : ImageModel.fromJson(json['selectedImage'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
      images: (json['images'] as List<dynamic>?)
              ?.map((dynamic e) => ImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ImageModel>[],
      users: (json['users'] as List<dynamic>?)
              ?.map((dynamic e) => UserModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <UserModel>[],
      reviews: (json['reviews'] as List<dynamic>?)
              ?.map((dynamic e) => Review.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Review>[],
      page: json['page'] as int? ?? 1,
      query: json['query'] as String? ?? '',
      color: json['color'] as String? ?? '',
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) => <String, dynamic>{
      'user': instance.user,
      'selectedImage': instance.selectedImage,
      'isLoading': instance.isLoading,
      'images': instance.images,
      'users': instance.users,
      'reviews': instance.reviews,
      'page': instance.page,
      'query': instance.query,
      'color': instance.color,
    };
