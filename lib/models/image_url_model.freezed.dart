// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_url_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageUrlModel _$ImageUrlModelFromJson(Map<String, dynamic> json) {
  return ImageUrlModel$.fromJson(json);
}

/// @nodoc
mixin _$ImageUrlModel {
  @JsonKey(name: 'small')
  String get smallImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUrlModelCopyWith<ImageUrlModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUrlModelCopyWith<$Res> {
  factory $ImageUrlModelCopyWith(ImageUrlModel value, $Res Function(ImageUrlModel) then) =
      _$ImageUrlModelCopyWithImpl<$Res, ImageUrlModel>;
  @useResult
  $Res call({@JsonKey(name: 'small') String smallImage});
}

/// @nodoc
class _$ImageUrlModelCopyWithImpl<$Res, $Val extends ImageUrlModel> implements $ImageUrlModelCopyWith<$Res> {
  _$ImageUrlModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallImage = null,
  }) {
    return _then(_value.copyWith(
      smallImage: null == smallImage
          ? _value.smallImage
          : smallImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageUrlModel$ImplCopyWith<$Res> implements $ImageUrlModelCopyWith<$Res> {
  factory _$$ImageUrlModel$ImplCopyWith(_$ImageUrlModel$Impl value, $Res Function(_$ImageUrlModel$Impl) then) =
      __$$ImageUrlModel$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'small') String smallImage});
}

/// @nodoc
class __$$ImageUrlModel$ImplCopyWithImpl<$Res> extends _$ImageUrlModelCopyWithImpl<$Res, _$ImageUrlModel$Impl>
    implements _$$ImageUrlModel$ImplCopyWith<$Res> {
  __$$ImageUrlModel$ImplCopyWithImpl(_$ImageUrlModel$Impl _value, $Res Function(_$ImageUrlModel$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallImage = null,
  }) {
    return _then(_$ImageUrlModel$Impl(
      smallImage: null == smallImage
          ? _value.smallImage
          : smallImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageUrlModel$Impl implements ImageUrlModel$ {
  const _$ImageUrlModel$Impl({@JsonKey(name: 'small') required this.smallImage});

  factory _$ImageUrlModel$Impl.fromJson(Map<String, dynamic> json) => _$$ImageUrlModel$ImplFromJson(json);

  @override
  @JsonKey(name: 'small')
  final String smallImage;

  @override
  String toString() {
    return 'ImageUrlModel(smallImage: $smallImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUrlModel$Impl &&
            (identical(other.smallImage, smallImage) || other.smallImage == smallImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, smallImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUrlModel$ImplCopyWith<_$ImageUrlModel$Impl> get copyWith =>
      __$$ImageUrlModel$ImplCopyWithImpl<_$ImageUrlModel$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageUrlModel$ImplToJson(
      this,
    );
  }
}

abstract class ImageUrlModel$ implements ImageUrlModel {
  const factory ImageUrlModel$({@JsonKey(name: 'small') required final String smallImage}) = _$ImageUrlModel$Impl;

  factory ImageUrlModel$.fromJson(Map<String, dynamic> json) = _$ImageUrlModel$Impl.fromJson;

  @override
  @JsonKey(name: 'small')
  String get smallImage;
  @override
  @JsonKey(ignore: true)
  _$$ImageUrlModel$ImplCopyWith<_$ImageUrlModel$Impl> get copyWith => throw _privateConstructorUsedError;
}
