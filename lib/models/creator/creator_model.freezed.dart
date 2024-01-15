// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatorModel _$CreatorModelFromJson(Map<String, dynamic> json) {
  return CreatorModel$.fromJson(json);
}

/// @nodoc
mixin _$CreatorModel {
  LinksModel get links => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatorModelCopyWith<CreatorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatorModelCopyWith<$Res> {
  factory $CreatorModelCopyWith(
          CreatorModel value, $Res Function(CreatorModel) then) =
      _$CreatorModelCopyWithImpl<$Res, CreatorModel>;
  @useResult
  $Res call({LinksModel links, String name});

  $LinksModelCopyWith<$Res> get links;
}

/// @nodoc
class _$CreatorModelCopyWithImpl<$Res, $Val extends CreatorModel>
    implements $CreatorModelCopyWith<$Res> {
  _$CreatorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? links = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as LinksModel,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksModelCopyWith<$Res> get links {
    return $LinksModelCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreatorModel$ImplCopyWith<$Res>
    implements $CreatorModelCopyWith<$Res> {
  factory _$$CreatorModel$ImplCopyWith(
          _$CreatorModel$Impl value, $Res Function(_$CreatorModel$Impl) then) =
      __$$CreatorModel$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LinksModel links, String name});

  @override
  $LinksModelCopyWith<$Res> get links;
}

/// @nodoc
class __$$CreatorModel$ImplCopyWithImpl<$Res>
    extends _$CreatorModelCopyWithImpl<$Res, _$CreatorModel$Impl>
    implements _$$CreatorModel$ImplCopyWith<$Res> {
  __$$CreatorModel$ImplCopyWithImpl(
      _$CreatorModel$Impl _value, $Res Function(_$CreatorModel$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? links = null,
    Object? name = null,
  }) {
    return _then(_$CreatorModel$Impl(
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as LinksModel,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatorModel$Impl implements CreatorModel$ {
  const _$CreatorModel$Impl({required this.links, required this.name});

  factory _$CreatorModel$Impl.fromJson(Map<String, dynamic> json) =>
      _$$CreatorModel$ImplFromJson(json);

  @override
  final LinksModel links;
  @override
  final String name;

  @override
  String toString() {
    return 'CreatorModel(links: $links, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatorModel$Impl &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, links, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatorModel$ImplCopyWith<_$CreatorModel$Impl> get copyWith =>
      __$$CreatorModel$ImplCopyWithImpl<_$CreatorModel$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatorModel$ImplToJson(
      this,
    );
  }
}

abstract class CreatorModel$ implements CreatorModel {
  const factory CreatorModel$(
      {required final LinksModel links,
      required final String name}) = _$CreatorModel$Impl;

  factory CreatorModel$.fromJson(Map<String, dynamic> json) =
      _$CreatorModel$Impl.fromJson;

  @override
  LinksModel get links;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CreatorModel$ImplCopyWith<_$CreatorModel$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
