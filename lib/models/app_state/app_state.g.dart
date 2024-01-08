// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$Impl _$$AppState$ImplFromJson(Map<String, dynamic> json) =>
    _$AppState$Impl(
      isLoading: json['isLoading'] as bool? ?? false,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ImageModel>[],
      page: json['page'] as int? ?? 1,
      lastQuery: json['lastQuery'] as String? ?? '',
      lastColor: json['lastColor'] as String? ?? '',
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'images': instance.images,
      'page': instance.page,
      'lastQuery': instance.lastQuery,
      'lastColor': instance.lastColor,
    };
