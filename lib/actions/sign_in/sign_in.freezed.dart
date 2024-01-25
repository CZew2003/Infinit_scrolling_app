// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignIn {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)
        $default, {
    required TResult Function(UserModel? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)?
        $default, {
    TResult? Function(UserModel? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)?
        $default, {
    TResult Function(UserModel? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignInStart value) $default, {
    required TResult Function(SignInSuccessful value) successful,
    required TResult Function(SignInError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInStart value)? $default, {
    TResult? Function(SignInSuccessful value)? successful,
    TResult? Function(SignInError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInStart value)? $default, {
    TResult Function(SignInSuccessful value)? successful,
    TResult Function(SignInError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInCopyWith<$Res> {
  factory $SignInCopyWith(SignIn value, $Res Function(SignIn) then) =
      _$SignInCopyWithImpl<$Res, SignIn>;
}

/// @nodoc
class _$SignInCopyWithImpl<$Res, $Val extends SignIn>
    implements $SignInCopyWith<$Res> {
  _$SignInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInStartImplCopyWith<$Res> {
  factory _$$SignInStartImplCopyWith(
          _$SignInStartImpl value, $Res Function(_$SignInStartImpl) then) =
      __$$SignInStartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, ActionResult result});
}

/// @nodoc
class __$$SignInStartImplCopyWithImpl<$Res>
    extends _$SignInCopyWithImpl<$Res, _$SignInStartImpl>
    implements _$$SignInStartImplCopyWith<$Res> {
  __$$SignInStartImplCopyWithImpl(
      _$SignInStartImpl _value, $Res Function(_$SignInStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? result = null,
  }) {
    return _then(_$SignInStartImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ActionResult,
    ));
  }
}

/// @nodoc

class _$SignInStartImpl implements SignInStart {
  const _$SignInStartImpl(
      {required this.email, required this.password, required this.result});

  @override
  final String email;
  @override
  final String password;
  @override
  final ActionResult result;

  @override
  String toString() {
    return 'SignIn(email: $email, password: $password, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStartImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStartImplCopyWith<_$SignInStartImpl> get copyWith =>
      __$$SignInStartImplCopyWithImpl<_$SignInStartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)
        $default, {
    required TResult Function(UserModel? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(email, password, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)?
        $default, {
    TResult? Function(UserModel? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(email, password, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)?
        $default, {
    TResult Function(UserModel? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(email, password, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignInStart value) $default, {
    required TResult Function(SignInSuccessful value) successful,
    required TResult Function(SignInError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInStart value)? $default, {
    TResult? Function(SignInSuccessful value)? successful,
    TResult? Function(SignInError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInStart value)? $default, {
    TResult Function(SignInSuccessful value)? successful,
    TResult Function(SignInError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SignInStart implements SignIn {
  const factory SignInStart(
      {required final String email,
      required final String password,
      required final ActionResult result}) = _$SignInStartImpl;

  String get email;
  String get password;
  ActionResult get result;
  @JsonKey(ignore: true)
  _$$SignInStartImplCopyWith<_$SignInStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInSuccessfulImplCopyWith<$Res> {
  factory _$$SignInSuccessfulImplCopyWith(_$SignInSuccessfulImpl value,
          $Res Function(_$SignInSuccessfulImpl) then) =
      __$$SignInSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel? user});

  $UserModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SignInSuccessfulImplCopyWithImpl<$Res>
    extends _$SignInCopyWithImpl<$Res, _$SignInSuccessfulImpl>
    implements _$$SignInSuccessfulImplCopyWith<$Res> {
  __$$SignInSuccessfulImplCopyWithImpl(_$SignInSuccessfulImpl _value,
      $Res Function(_$SignInSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$SignInSuccessfulImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SignInSuccessfulImpl implements SignInSuccessful {
  const _$SignInSuccessfulImpl(this.user);

  @override
  final UserModel? user;

  @override
  String toString() {
    return 'SignIn.successful(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInSuccessfulImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInSuccessfulImplCopyWith<_$SignInSuccessfulImpl> get copyWith =>
      __$$SignInSuccessfulImplCopyWithImpl<_$SignInSuccessfulImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)
        $default, {
    required TResult Function(UserModel? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)?
        $default, {
    TResult? Function(UserModel? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)?
        $default, {
    TResult Function(UserModel? user)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SignInStart value) $default, {
    required TResult Function(SignInSuccessful value) successful,
    required TResult Function(SignInError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInStart value)? $default, {
    TResult? Function(SignInSuccessful value)? successful,
    TResult? Function(SignInError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInStart value)? $default, {
    TResult Function(SignInSuccessful value)? successful,
    TResult Function(SignInError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class SignInSuccessful implements SignIn {
  const factory SignInSuccessful(final UserModel? user) =
      _$SignInSuccessfulImpl;

  UserModel? get user;
  @JsonKey(ignore: true)
  _$$SignInSuccessfulImplCopyWith<_$SignInSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInErrorImplCopyWith<$Res> {
  factory _$$SignInErrorImplCopyWith(
          _$SignInErrorImpl value, $Res Function(_$SignInErrorImpl) then) =
      __$$SignInErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$SignInErrorImplCopyWithImpl<$Res>
    extends _$SignInCopyWithImpl<$Res, _$SignInErrorImpl>
    implements _$$SignInErrorImplCopyWith<$Res> {
  __$$SignInErrorImplCopyWithImpl(
      _$SignInErrorImpl _value, $Res Function(_$SignInErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$SignInErrorImpl(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$SignInErrorImpl implements SignInError {
  const _$SignInErrorImpl(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'SignIn.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInErrorImpl &&
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
  _$$SignInErrorImplCopyWith<_$SignInErrorImpl> get copyWith =>
      __$$SignInErrorImplCopyWithImpl<_$SignInErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)
        $default, {
    required TResult Function(UserModel? user) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String email, String password, ActionResult result)?
        $default, {
    TResult? Function(UserModel? user)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String email, String password, ActionResult result)?
        $default, {
    TResult Function(UserModel? user)? successful,
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
    TResult Function(SignInStart value) $default, {
    required TResult Function(SignInSuccessful value) successful,
    required TResult Function(SignInError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SignInStart value)? $default, {
    TResult? Function(SignInSuccessful value)? successful,
    TResult? Function(SignInError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SignInStart value)? $default, {
    TResult Function(SignInSuccessful value)? successful,
    TResult Function(SignInError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignInError implements SignIn, ErrorAction {
  const factory SignInError(final Object error, final StackTrace stackTrace) =
      _$SignInErrorImpl;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$SignInErrorImplCopyWith<_$SignInErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
