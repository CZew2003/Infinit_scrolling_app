// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return ImageModel$.fromJson(json);
}

/// @nodoc
mixin _$ImageModel {
  @JsonKey(name: 'alt_description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  ImageUrlModel get urls => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  CreatorModel get creatorModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageModelCopyWith<ImageModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(ImageModel value, $Res Function(ImageModel) then) =
      _$ImageModelCopyWithImpl<$Res, ImageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'alt_description') String description,
      @JsonKey(name: 'created_at') String createdAt,
      ImageUrlModel urls,
      int likes,
      @JsonKey(name: 'user') CreatorModel creatorModel});

  $ImageUrlModelCopyWith<$Res> get urls;
  $CreatorModelCopyWith<$Res> get creatorModel;
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res, $Val extends ImageModel> implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? createdAt = null,
    Object? urls = null,
    Object? likes = null,
    Object? creatorModel = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as ImageUrlModel,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      creatorModel: null == creatorModel
          ? _value.creatorModel
          : creatorModel // ignore: cast_nullable_to_non_nullable
              as CreatorModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageUrlModelCopyWith<$Res> get urls {
    return $ImageUrlModelCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorModelCopyWith<$Res> get creatorModel {
    return $CreatorModelCopyWith<$Res>(_value.creatorModel, (value) {
      return _then(_value.copyWith(creatorModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImageModel$ImplCopyWith<$Res> implements $ImageModelCopyWith<$Res> {
  factory _$$ImageModel$ImplCopyWith(_$ImageModel$Impl value, $Res Function(_$ImageModel$Impl) then) =
      __$$ImageModel$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'alt_description') String description,
      @JsonKey(name: 'created_at') String createdAt,
      ImageUrlModel urls,
      int likes,
      @JsonKey(name: 'user') CreatorModel creatorModel});

  @override
  $ImageUrlModelCopyWith<$Res> get urls;
  @override
  $CreatorModelCopyWith<$Res> get creatorModel;
}

/// @nodoc
class __$$ImageModel$ImplCopyWithImpl<$Res> extends _$ImageModelCopyWithImpl<$Res, _$ImageModel$Impl>
    implements _$$ImageModel$ImplCopyWith<$Res> {
  __$$ImageModel$ImplCopyWithImpl(_$ImageModel$Impl _value, $Res Function(_$ImageModel$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? createdAt = null,
    Object? urls = null,
    Object? likes = null,
    Object? creatorModel = null,
  }) {
    return _then(_$ImageModel$Impl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as ImageUrlModel,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      creatorModel: null == creatorModel
          ? _value.creatorModel
          : creatorModel // ignore: cast_nullable_to_non_nullable
              as CreatorModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageModel$Impl implements ImageModel$ {
  const _$ImageModel$Impl(
      {@JsonKey(name: 'alt_description') required this.description,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.urls,
      required this.likes,
      @JsonKey(name: 'user') required this.creatorModel});

  factory _$ImageModel$Impl.fromJson(Map<String, dynamic> json) => _$$ImageModel$ImplFromJson(json);

  @override
  @JsonKey(name: 'alt_description')
  final String description;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  final ImageUrlModel urls;
  @override
  final int likes;
  @override
  @JsonKey(name: 'user')
  final CreatorModel creatorModel;

  @override
  String toString() {
    return 'ImageModel(description: $description, createdAt: $createdAt, urls: $urls, likes: $likes, creatorModel: $creatorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageModel$Impl &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.creatorModel, creatorModel) || other.creatorModel == creatorModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, createdAt, urls, likes, creatorModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageModel$ImplCopyWith<_$ImageModel$Impl> get copyWith =>
      __$$ImageModel$ImplCopyWithImpl<_$ImageModel$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageModel$ImplToJson(
      this,
    );
  }
}

abstract class ImageModel$ implements ImageModel {
  const factory ImageModel$(
      {@JsonKey(name: 'alt_description') required final String description,
      @JsonKey(name: 'created_at') required final String createdAt,
      required final ImageUrlModel urls,
      required final int likes,
      @JsonKey(name: 'user') required final CreatorModel creatorModel}) = _$ImageModel$Impl;

  factory ImageModel$.fromJson(Map<String, dynamic> json) = _$ImageModel$Impl.fromJson;

  @override
  @JsonKey(name: 'alt_description')
  String get description;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  ImageUrlModel get urls;
  @override
  int get likes;
  @override
  @JsonKey(name: 'user')
  CreatorModel get creatorModel;
  @override
  @JsonKey(ignore: true)
  _$$ImageModel$ImplCopyWith<_$ImageModel$Impl> get copyWith => throw _privateConstructorUsedError;
}
