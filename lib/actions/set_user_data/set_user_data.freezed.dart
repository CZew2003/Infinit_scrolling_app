// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SetUserData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserModel user) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(UserModel user)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserModel user)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SetUserDataStart value) $default, {
    required TResult Function(SetUserDataSuccessful value) successful,
    required TResult Function(SetUserDataError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SetUserDataStart value)? $default, {
    TResult? Function(SetUserDataSuccessful value)? successful,
    TResult? Function(SetUserDataError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SetUserDataStart value)? $default, {
    TResult Function(SetUserDataSuccessful value)? successful,
    TResult Function(SetUserDataError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetUserDataCopyWith<$Res> {
  factory $SetUserDataCopyWith(SetUserData value, $Res Function(SetUserData) then) =
      _$SetUserDataCopyWithImpl<$Res, SetUserData>;
}

/// @nodoc
class _$SetUserDataCopyWithImpl<$Res, $Val extends SetUserData> implements $SetUserDataCopyWith<$Res> {
  _$SetUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetUserDataStartImplCopyWith<$Res> {
  factory _$$SetUserDataStartImplCopyWith(_$SetUserDataStartImpl value, $Res Function(_$SetUserDataStartImpl) then) =
      __$$SetUserDataStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$SetUserDataStartImplCopyWithImpl<$Res> extends _$SetUserDataCopyWithImpl<$Res, _$SetUserDataStartImpl>
    implements _$$SetUserDataStartImplCopyWith<$Res> {
  __$$SetUserDataStartImplCopyWithImpl(_$SetUserDataStartImpl _value, $Res Function(_$SetUserDataStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SetUserDataStartImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SetUserDataStartImpl implements SetUserDataStart {
  const _$SetUserDataStartImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'SetUserData(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUserDataStartImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetUserDataStartImplCopyWith<_$SetUserDataStartImpl> get copyWith =>
      __$$SetUserDataStartImplCopyWithImpl<_$SetUserDataStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserModel user) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(UserModel user)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserModel user)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SetUserDataStart value) $default, {
    required TResult Function(SetUserDataSuccessful value) successful,
    required TResult Function(SetUserDataError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SetUserDataStart value)? $default, {
    TResult? Function(SetUserDataSuccessful value)? successful,
    TResult? Function(SetUserDataError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SetUserDataStart value)? $default, {
    TResult Function(SetUserDataSuccessful value)? successful,
    TResult Function(SetUserDataError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SetUserDataStart implements SetUserData {
  const factory SetUserDataStart(final UserModel user) = _$SetUserDataStartImpl;

  UserModel get user;
  @JsonKey(ignore: true)
  _$$SetUserDataStartImplCopyWith<_$SetUserDataStartImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetUserDataSuccessfulImplCopyWith<$Res> {
  factory _$$SetUserDataSuccessfulImplCopyWith(
          _$SetUserDataSuccessfulImpl value, $Res Function(_$SetUserDataSuccessfulImpl) then) =
      __$$SetUserDataSuccessfulImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetUserDataSuccessfulImplCopyWithImpl<$Res>
    extends _$SetUserDataCopyWithImpl<$Res, _$SetUserDataSuccessfulImpl>
    implements _$$SetUserDataSuccessfulImplCopyWith<$Res> {
  __$$SetUserDataSuccessfulImplCopyWithImpl(
      _$SetUserDataSuccessfulImpl _value, $Res Function(_$SetUserDataSuccessfulImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetUserDataSuccessfulImpl implements SetUserDataSuccessful {
  const _$SetUserDataSuccessfulImpl();

  @override
  String toString() {
    return 'SetUserData.successful()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$SetUserDataSuccessfulImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserModel user) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(UserModel user)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserModel user)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SetUserDataStart value) $default, {
    required TResult Function(SetUserDataSuccessful value) successful,
    required TResult Function(SetUserDataError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SetUserDataStart value)? $default, {
    TResult? Function(SetUserDataSuccessful value)? successful,
    TResult? Function(SetUserDataError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SetUserDataStart value)? $default, {
    TResult Function(SetUserDataSuccessful value)? successful,
    TResult Function(SetUserDataError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SetUserDataSuccessful implements SetUserData {
  const factory SetUserDataSuccessful() = _$SetUserDataSuccessfulImpl;
}

/// @nodoc
abstract class _$$SetUserDataErrorImplCopyWith<$Res> {
  factory _$$SetUserDataErrorImplCopyWith(_$SetUserDataErrorImpl value, $Res Function(_$SetUserDataErrorImpl) then) =
      __$$SetUserDataErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$SetUserDataErrorImplCopyWithImpl<$Res> extends _$SetUserDataCopyWithImpl<$Res, _$SetUserDataErrorImpl>
    implements _$$SetUserDataErrorImplCopyWith<$Res> {
  __$$SetUserDataErrorImplCopyWithImpl(_$SetUserDataErrorImpl _value, $Res Function(_$SetUserDataErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$SetUserDataErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$SetUserDataErrorImpl implements SetUserDataError {
  const _$SetUserDataErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'SetUserData.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUserDataErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetUserDataErrorImplCopyWith<_$SetUserDataErrorImpl> get copyWith =>
      __$$SetUserDataErrorImplCopyWithImpl<_$SetUserDataErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserModel user) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(UserModel user)? $default, {
    TResult? Function()? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserModel user)? $default, {
    TResult Function()? successful,
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
    TResult Function(SetUserDataStart value) $default, {
    required TResult Function(SetUserDataSuccessful value) successful,
    required TResult Function(SetUserDataError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SetUserDataStart value)? $default, {
    TResult? Function(SetUserDataSuccessful value)? successful,
    TResult? Function(SetUserDataError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SetUserDataStart value)? $default, {
    TResult Function(SetUserDataSuccessful value)? successful,
    TResult Function(SetUserDataError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SetUserDataError implements SetUserData, ErrorAction {
  const factory SetUserDataError(final Object error, final StackTrace stackTrace) = _$SetUserDataErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$SetUserDataErrorImplCopyWith<_$SetUserDataErrorImpl> get copyWith => throw _privateConstructorUsedError;
}
