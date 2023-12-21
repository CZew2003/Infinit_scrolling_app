// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel$.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  LinksModel get links => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({LinksModel links, String name});

  $LinksModelCopyWith<$Res> get links;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

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
abstract class _$$UserModel$ImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModel$ImplCopyWith(
          _$UserModel$Impl value, $Res Function(_$UserModel$Impl) then) =
      __$$UserModel$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LinksModel links, String name});

  @override
  $LinksModelCopyWith<$Res> get links;
}

/// @nodoc
class __$$UserModel$ImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModel$Impl>
    implements _$$UserModel$ImplCopyWith<$Res> {
  __$$UserModel$ImplCopyWithImpl(
      _$UserModel$Impl _value, $Res Function(_$UserModel$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? links = null,
    Object? name = null,
  }) {
    return _then(_$UserModel$Impl(
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
class _$UserModel$Impl implements UserModel$ {
  const _$UserModel$Impl({required this.links, required this.name});

  factory _$UserModel$Impl.fromJson(Map<String, dynamic> json) =>
      _$$UserModel$ImplFromJson(json);

  @override
  final LinksModel links;
  @override
  final String name;

  @override
  String toString() {
    return 'UserModel(links: $links, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModel$Impl &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, links, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModel$ImplCopyWith<_$UserModel$Impl> get copyWith =>
      __$$UserModel$ImplCopyWithImpl<_$UserModel$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModel$ImplToJson(
      this,
    );
  }
}

abstract class UserModel$ implements UserModel {
  const factory UserModel$(
      {required final LinksModel links,
      required final String name}) = _$UserModel$Impl;

  factory UserModel$.fromJson(Map<String, dynamic> json) =
      _$UserModel$Impl.fromJson;

  @override
  LinksModel get links;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$UserModel$ImplCopyWith<_$UserModel$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
