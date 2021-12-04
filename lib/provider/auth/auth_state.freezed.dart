// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthStateUnauthenticated unauthenticated() {
    return const _AuthStateUnauthenticated();
  }

  _AuthStateFetching fetching() {
    return const _AuthStateFetching();
  }

  _AuthStateAuthenticated authenticated(String token) {
    return _AuthStateAuthenticated(
      token,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() fetching,
    required TResult Function(String token) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? fetching,
    TResult Function(String token)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? fetching,
    TResult Function(String token)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnauthenticated value) unauthenticated,
    required TResult Function(_AuthStateFetching value) fetching,
    required TResult Function(_AuthStateAuthenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult Function(_AuthStateFetching value)? fetching,
    TResult Function(_AuthStateAuthenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult Function(_AuthStateFetching value)? fetching,
    TResult Function(_AuthStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$AuthStateUnauthenticatedCopyWith<$Res> {
  factory _$AuthStateUnauthenticatedCopyWith(_AuthStateUnauthenticated value,
          $Res Function(_AuthStateUnauthenticated) then) =
      __$AuthStateUnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthStateUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateUnauthenticatedCopyWith<$Res> {
  __$AuthStateUnauthenticatedCopyWithImpl(_AuthStateUnauthenticated _value,
      $Res Function(_AuthStateUnauthenticated) _then)
      : super(_value, (v) => _then(v as _AuthStateUnauthenticated));

  @override
  _AuthStateUnauthenticated get _value =>
      super._value as _AuthStateUnauthenticated;
}

/// @nodoc

class _$_AuthStateUnauthenticated implements _AuthStateUnauthenticated {
  const _$_AuthStateUnauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthStateUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() fetching,
    required TResult Function(String token) authenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? fetching,
    TResult Function(String token)? authenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? fetching,
    TResult Function(String token)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnauthenticated value) unauthenticated,
    required TResult Function(_AuthStateFetching value) fetching,
    required TResult Function(_AuthStateAuthenticated value) authenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult Function(_AuthStateFetching value)? fetching,
    TResult Function(_AuthStateAuthenticated value)? authenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult Function(_AuthStateFetching value)? fetching,
    TResult Function(_AuthStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthStateUnauthenticated implements AuthState {
  const factory _AuthStateUnauthenticated() = _$_AuthStateUnauthenticated;
}

/// @nodoc
abstract class _$AuthStateFetchingCopyWith<$Res> {
  factory _$AuthStateFetchingCopyWith(
          _AuthStateFetching value, $Res Function(_AuthStateFetching) then) =
      __$AuthStateFetchingCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthStateFetchingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateFetchingCopyWith<$Res> {
  __$AuthStateFetchingCopyWithImpl(
      _AuthStateFetching _value, $Res Function(_AuthStateFetching) _then)
      : super(_value, (v) => _then(v as _AuthStateFetching));

  @override
  _AuthStateFetching get _value => super._value as _AuthStateFetching;
}

/// @nodoc

class _$_AuthStateFetching implements _AuthStateFetching {
  const _$_AuthStateFetching();

  @override
  String toString() {
    return 'AuthState.fetching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthStateFetching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() fetching,
    required TResult Function(String token) authenticated,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? fetching,
    TResult Function(String token)? authenticated,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? fetching,
    TResult Function(String token)? authenticated,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnauthenticated value) unauthenticated,
    required TResult Function(_AuthStateFetching value) fetching,
    required TResult Function(_AuthStateAuthenticated value) authenticated,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult Function(_AuthStateFetching value)? fetching,
    TResult Function(_AuthStateAuthenticated value)? authenticated,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult Function(_AuthStateFetching value)? fetching,
    TResult Function(_AuthStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _AuthStateFetching implements AuthState {
  const factory _AuthStateFetching() = _$_AuthStateFetching;
}

/// @nodoc
abstract class _$AuthStateAuthenticatedCopyWith<$Res> {
  factory _$AuthStateAuthenticatedCopyWith(_AuthStateAuthenticated value,
          $Res Function(_AuthStateAuthenticated) then) =
      __$AuthStateAuthenticatedCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class __$AuthStateAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateAuthenticatedCopyWith<$Res> {
  __$AuthStateAuthenticatedCopyWithImpl(_AuthStateAuthenticated _value,
      $Res Function(_AuthStateAuthenticated) _then)
      : super(_value, (v) => _then(v as _AuthStateAuthenticated));

  @override
  _AuthStateAuthenticated get _value => super._value as _AuthStateAuthenticated;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_AuthStateAuthenticated(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthStateAuthenticated implements _AuthStateAuthenticated {
  const _$_AuthStateAuthenticated(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthState.authenticated(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthStateAuthenticated &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  _$AuthStateAuthenticatedCopyWith<_AuthStateAuthenticated> get copyWith =>
      __$AuthStateAuthenticatedCopyWithImpl<_AuthStateAuthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() fetching,
    required TResult Function(String token) authenticated,
  }) {
    return authenticated(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? fetching,
    TResult Function(String token)? authenticated,
  }) {
    return authenticated?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? fetching,
    TResult Function(String token)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateUnauthenticated value) unauthenticated,
    required TResult Function(_AuthStateFetching value) fetching,
    required TResult Function(_AuthStateAuthenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult Function(_AuthStateFetching value)? fetching,
    TResult Function(_AuthStateAuthenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateUnauthenticated value)? unauthenticated,
    TResult Function(_AuthStateFetching value)? fetching,
    TResult Function(_AuthStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthStateAuthenticated implements AuthState {
  const factory _AuthStateAuthenticated(String token) =
      _$_AuthStateAuthenticated;

  String get token;
  @JsonKey(ignore: true)
  _$AuthStateAuthenticatedCopyWith<_AuthStateAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
