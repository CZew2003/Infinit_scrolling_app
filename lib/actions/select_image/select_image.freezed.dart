// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectImage {
  ImageModel get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectImageCopyWith<SelectImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectImageCopyWith<$Res> {
  factory $SelectImageCopyWith(
          SelectImage value, $Res Function(SelectImage) then) =
      _$SelectImageCopyWithImpl<$Res, SelectImage>;
  @useResult
  $Res call({ImageModel image});

  $ImageModelCopyWith<$Res> get image;
}

/// @nodoc
class _$SelectImageCopyWithImpl<$Res, $Val extends SelectImage>
    implements $SelectImageCopyWith<$Res> {
  _$SelectImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res> get image {
    return $ImageModelCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SelectImageStart$ImplCopyWith<$Res>
    implements $SelectImageCopyWith<$Res> {
  factory _$$SelectImageStart$ImplCopyWith(_$SelectImageStart$Impl value,
          $Res Function(_$SelectImageStart$Impl) then) =
      __$$SelectImageStart$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageModel image});

  @override
  $ImageModelCopyWith<$Res> get image;
}

/// @nodoc
class __$$SelectImageStart$ImplCopyWithImpl<$Res>
    extends _$SelectImageCopyWithImpl<$Res, _$SelectImageStart$Impl>
    implements _$$SelectImageStart$ImplCopyWith<$Res> {
  __$$SelectImageStart$ImplCopyWithImpl(_$SelectImageStart$Impl _value,
      $Res Function(_$SelectImageStart$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$SelectImageStart$Impl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ));
  }
}

/// @nodoc

class _$SelectImageStart$Impl implements SelectImageStart$ {
  const _$SelectImageStart$Impl(this.image);

  @override
  final ImageModel image;

  @override
  String toString() {
    return 'SelectImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectImageStart$Impl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectImageStart$ImplCopyWith<_$SelectImageStart$Impl> get copyWith =>
      __$$SelectImageStart$ImplCopyWithImpl<_$SelectImageStart$Impl>(
          this, _$identity);
}

abstract class SelectImageStart$ implements SelectImage {
  const factory SelectImageStart$(final ImageModel image) =
      _$SelectImageStart$Impl;

  @override
  ImageModel get image;
  @override
  @JsonKey(ignore: true)
  _$$SelectImageStart$ImplCopyWith<_$SelectImageStart$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
