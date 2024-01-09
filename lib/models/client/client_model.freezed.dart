// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientModel _$ClientModelFromJson(Map<String, dynamic> json) {
  return ClientModel$.fromJson(json);
}

/// @nodoc
mixin _$ClientModel {
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get pictureUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientModelCopyWith<ClientModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientModelCopyWith<$Res> {
  factory $ClientModelCopyWith(
          ClientModel value, $Res Function(ClientModel) then) =
      _$ClientModelCopyWithImpl<$Res, ClientModel>;
  @useResult
  $Res call({String email, String displayName, String? pictureUrl});
}

/// @nodoc
class _$ClientModelCopyWithImpl<$Res, $Val extends ClientModel>
    implements $ClientModelCopyWith<$Res> {
  _$ClientModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? displayName = null,
    Object? pictureUrl = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: freezed == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientModel$ImplCopyWith<$Res>
    implements $ClientModelCopyWith<$Res> {
  factory _$$ClientModel$ImplCopyWith(
          _$ClientModel$Impl value, $Res Function(_$ClientModel$Impl) then) =
      __$$ClientModel$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String displayName, String? pictureUrl});
}

/// @nodoc
class __$$ClientModel$ImplCopyWithImpl<$Res>
    extends _$ClientModelCopyWithImpl<$Res, _$ClientModel$Impl>
    implements _$$ClientModel$ImplCopyWith<$Res> {
  __$$ClientModel$ImplCopyWithImpl(
      _$ClientModel$Impl _value, $Res Function(_$ClientModel$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? displayName = null,
    Object? pictureUrl = freezed,
  }) {
    return _then(_$ClientModel$Impl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: freezed == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientModel$Impl implements ClientModel$ {
  const _$ClientModel$Impl(
      {required this.email, required this.displayName, this.pictureUrl});

  factory _$ClientModel$Impl.fromJson(Map<String, dynamic> json) =>
      _$$ClientModel$ImplFromJson(json);

  @override
  final String email;
  @override
  final String displayName;
  @override
  final String? pictureUrl;

  @override
  String toString() {
    return 'ClientModel(email: $email, displayName: $displayName, pictureUrl: $pictureUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientModel$Impl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.pictureUrl, pictureUrl) ||
                other.pictureUrl == pictureUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, displayName, pictureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientModel$ImplCopyWith<_$ClientModel$Impl> get copyWith =>
      __$$ClientModel$ImplCopyWithImpl<_$ClientModel$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientModel$ImplToJson(
      this,
    );
  }
}

abstract class ClientModel$ implements ClientModel {
  const factory ClientModel$(
      {required final String email,
      required final String displayName,
      final String? pictureUrl}) = _$ClientModel$Impl;

  factory ClientModel$.fromJson(Map<String, dynamic> json) =
      _$ClientModel$Impl.fromJson;

  @override
  String get email;
  @override
  String get displayName;
  @override
  String? get pictureUrl;
  @override
  @JsonKey(ignore: true)
  _$$ClientModel$ImplCopyWith<_$ClientModel$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
