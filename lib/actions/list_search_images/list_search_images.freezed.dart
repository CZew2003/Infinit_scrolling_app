// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_search_images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListSearchImages {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int page, String query, String color) $default, {
    required TResult Function(List<ImageModel> images) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int page, String query, String color)? $default, {
    TResult? Function(List<ImageModel> images)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int page, String query, String color)? $default, {
    TResult Function(List<ImageModel> images)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ListSearchImagesStart value) $default, {
    required TResult Function(ListSearchImagesSuccessful value) successful,
    required TResult Function(ListSearchImagesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ListSearchImagesStart value)? $default, {
    TResult? Function(ListSearchImagesSuccessful value)? successful,
    TResult? Function(ListSearchImagesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ListSearchImagesStart value)? $default, {
    TResult Function(ListSearchImagesSuccessful value)? successful,
    TResult Function(ListSearchImagesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSearchImagesCopyWith<$Res> {
  factory $ListSearchImagesCopyWith(
          ListSearchImages value, $Res Function(ListSearchImages) then) =
      _$ListSearchImagesCopyWithImpl<$Res, ListSearchImages>;
}

/// @nodoc
class _$ListSearchImagesCopyWithImpl<$Res, $Val extends ListSearchImages>
    implements $ListSearchImagesCopyWith<$Res> {
  _$ListSearchImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ListSearchImagesStartImplCopyWith<$Res> {
  factory _$$ListSearchImagesStartImplCopyWith(
          _$ListSearchImagesStartImpl value,
          $Res Function(_$ListSearchImagesStartImpl) then) =
      __$$ListSearchImagesStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, String query, String color});
}

/// @nodoc
class __$$ListSearchImagesStartImplCopyWithImpl<$Res>
    extends _$ListSearchImagesCopyWithImpl<$Res, _$ListSearchImagesStartImpl>
    implements _$$ListSearchImagesStartImplCopyWith<$Res> {
  __$$ListSearchImagesStartImplCopyWithImpl(_$ListSearchImagesStartImpl _value,
      $Res Function(_$ListSearchImagesStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? query = null,
    Object? color = null,
  }) {
    return _then(_$ListSearchImagesStartImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListSearchImagesStartImpl implements ListSearchImagesStart {
  const _$ListSearchImagesStartImpl(
      {required this.page, required this.query, required this.color});

  @override
  final int page;
  @override
  final String query;
  @override
  final String color;

  @override
  String toString() {
    return 'ListSearchImages(page: $page, query: $query, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListSearchImagesStartImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, query, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListSearchImagesStartImplCopyWith<_$ListSearchImagesStartImpl>
      get copyWith => __$$ListSearchImagesStartImplCopyWithImpl<
          _$ListSearchImagesStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int page, String query, String color) $default, {
    required TResult Function(List<ImageModel> images) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(page, query, color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int page, String query, String color)? $default, {
    TResult? Function(List<ImageModel> images)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(page, query, color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int page, String query, String color)? $default, {
    TResult Function(List<ImageModel> images)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(page, query, color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ListSearchImagesStart value) $default, {
    required TResult Function(ListSearchImagesSuccessful value) successful,
    required TResult Function(ListSearchImagesError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ListSearchImagesStart value)? $default, {
    TResult? Function(ListSearchImagesSuccessful value)? successful,
    TResult? Function(ListSearchImagesError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ListSearchImagesStart value)? $default, {
    TResult Function(ListSearchImagesSuccessful value)? successful,
    TResult Function(ListSearchImagesError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ListSearchImagesStart implements ListSearchImages {
  const factory ListSearchImagesStart(
      {required final int page,
      required final String query,
      required final String color}) = _$ListSearchImagesStartImpl;

  int get page;
  String get query;
  String get color;
  @JsonKey(ignore: true)
  _$$ListSearchImagesStartImplCopyWith<_$ListSearchImagesStartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListSearchImagesSuccessfulImplCopyWith<$Res> {
  factory _$$ListSearchImagesSuccessfulImplCopyWith(
          _$ListSearchImagesSuccessfulImpl value,
          $Res Function(_$ListSearchImagesSuccessfulImpl) then) =
      __$$ListSearchImagesSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ImageModel> images});
}

/// @nodoc
class __$$ListSearchImagesSuccessfulImplCopyWithImpl<$Res>
    extends _$ListSearchImagesCopyWithImpl<$Res,
        _$ListSearchImagesSuccessfulImpl>
    implements _$$ListSearchImagesSuccessfulImplCopyWith<$Res> {
  __$$ListSearchImagesSuccessfulImplCopyWithImpl(
      _$ListSearchImagesSuccessfulImpl _value,
      $Res Function(_$ListSearchImagesSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$ListSearchImagesSuccessfulImpl(
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ));
  }
}

/// @nodoc

class _$ListSearchImagesSuccessfulImpl implements ListSearchImagesSuccessful {
  const _$ListSearchImagesSuccessfulImpl(final List<ImageModel> images)
      : _images = images;

  final List<ImageModel> _images;
  @override
  List<ImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ListSearchImages.successful(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListSearchImagesSuccessfulImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListSearchImagesSuccessfulImplCopyWith<_$ListSearchImagesSuccessfulImpl>
      get copyWith => __$$ListSearchImagesSuccessfulImplCopyWithImpl<
          _$ListSearchImagesSuccessfulImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int page, String query, String color) $default, {
    required TResult Function(List<ImageModel> images) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int page, String query, String color)? $default, {
    TResult? Function(List<ImageModel> images)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int page, String query, String color)? $default, {
    TResult Function(List<ImageModel> images)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ListSearchImagesStart value) $default, {
    required TResult Function(ListSearchImagesSuccessful value) successful,
    required TResult Function(ListSearchImagesError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ListSearchImagesStart value)? $default, {
    TResult? Function(ListSearchImagesSuccessful value)? successful,
    TResult? Function(ListSearchImagesError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ListSearchImagesStart value)? $default, {
    TResult Function(ListSearchImagesSuccessful value)? successful,
    TResult Function(ListSearchImagesError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class ListSearchImagesSuccessful implements ListSearchImages {
  const factory ListSearchImagesSuccessful(final List<ImageModel> images) =
      _$ListSearchImagesSuccessfulImpl;

  List<ImageModel> get images;
  @JsonKey(ignore: true)
  _$$ListSearchImagesSuccessfulImplCopyWith<_$ListSearchImagesSuccessfulImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListSearchImagesErrorImplCopyWith<$Res> {
  factory _$$ListSearchImagesErrorImplCopyWith(
          _$ListSearchImagesErrorImpl value,
          $Res Function(_$ListSearchImagesErrorImpl) then) =
      __$$ListSearchImagesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$ListSearchImagesErrorImplCopyWithImpl<$Res>
    extends _$ListSearchImagesCopyWithImpl<$Res, _$ListSearchImagesErrorImpl>
    implements _$$ListSearchImagesErrorImplCopyWith<$Res> {
  __$$ListSearchImagesErrorImplCopyWithImpl(_$ListSearchImagesErrorImpl _value,
      $Res Function(_$ListSearchImagesErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$ListSearchImagesErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ListSearchImagesErrorImpl implements ListSearchImagesError {
  const _$ListSearchImagesErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ListSearchImages.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListSearchImagesErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListSearchImagesErrorImplCopyWith<_$ListSearchImagesErrorImpl>
      get copyWith => __$$ListSearchImagesErrorImplCopyWithImpl<
          _$ListSearchImagesErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int page, String query, String color) $default, {
    required TResult Function(List<ImageModel> images) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int page, String query, String color)? $default, {
    TResult? Function(List<ImageModel> images)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int page, String query, String color)? $default, {
    TResult Function(List<ImageModel> images)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ListSearchImagesStart value) $default, {
    required TResult Function(ListSearchImagesSuccessful value) successful,
    required TResult Function(ListSearchImagesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ListSearchImagesStart value)? $default, {
    TResult? Function(ListSearchImagesSuccessful value)? successful,
    TResult? Function(ListSearchImagesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ListSearchImagesStart value)? $default, {
    TResult Function(ListSearchImagesSuccessful value)? successful,
    TResult Function(ListSearchImagesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListSearchImagesError implements ListSearchImages, ErrorAction {
  const factory ListSearchImagesError(
          final Object error, final StackTrace stackTrace) =
      _$ListSearchImagesErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$ListSearchImagesErrorImplCopyWith<_$ListSearchImagesErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
