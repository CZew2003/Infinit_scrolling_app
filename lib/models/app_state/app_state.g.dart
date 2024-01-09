// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppState$Impl _$$AppState$ImplFromJson(Map<String, dynamic> json) =>
    _$AppState$Impl(
      client: json['client'] == null
          ? null
          : ClientModel.fromJson(json['client'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ImageModel>[],
      page: json['page'] as int? ?? 1,
      query: json['query'] as String? ?? '',
      color: json['color'] as String? ?? '',
    );

Map<String, dynamic> _$$AppState$ImplToJson(_$AppState$Impl instance) =>
    <String, dynamic>{
      'client': instance.client,
      'isLoading': instance.isLoading,
      'images': instance.images,
      'page': instance.page,
      'query': instance.query,
      'color': instance.color,
    };
