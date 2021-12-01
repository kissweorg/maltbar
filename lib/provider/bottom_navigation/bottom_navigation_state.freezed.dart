// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BottomNavigationStateTearOff {
  const _$BottomNavigationStateTearOff();

  _BottomNavigationStateSwitching switching(
      BottomNavigation from, BottomNavigation to) {
    return _BottomNavigationStateSwitching(
      from,
      to,
    );
  }

  _BottomNavigationStateSwitched switched(BottomNavigation current) {
    return _BottomNavigationStateSwitched(
      current,
    );
  }
}

/// @nodoc
const $BottomNavigationState = _$BottomNavigationStateTearOff();

/// @nodoc
mixin _$BottomNavigationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BottomNavigation from, BottomNavigation to)
        switching,
    required TResult Function(BottomNavigation current) switched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BottomNavigation from, BottomNavigation to)? switching,
    TResult Function(BottomNavigation current)? switched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BottomNavigation from, BottomNavigation to)? switching,
    TResult Function(BottomNavigation current)? switched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BottomNavigationStateSwitching value) switching,
    required TResult Function(_BottomNavigationStateSwitched value) switched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BottomNavigationStateSwitching value)? switching,
    TResult Function(_BottomNavigationStateSwitched value)? switched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BottomNavigationStateSwitching value)? switching,
    TResult Function(_BottomNavigationStateSwitched value)? switched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BottomNavigationStateCopyWithImpl<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  final BottomNavigationState _value;
  // ignore: unused_field
  final $Res Function(BottomNavigationState) _then;
}

/// @nodoc
abstract class _$BottomNavigationStateSwitchingCopyWith<$Res> {
  factory _$BottomNavigationStateSwitchingCopyWith(
          _BottomNavigationStateSwitching value,
          $Res Function(_BottomNavigationStateSwitching) then) =
      __$BottomNavigationStateSwitchingCopyWithImpl<$Res>;
  $Res call({BottomNavigation from, BottomNavigation to});
}

/// @nodoc
class __$BottomNavigationStateSwitchingCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$BottomNavigationStateSwitchingCopyWith<$Res> {
  __$BottomNavigationStateSwitchingCopyWithImpl(
      _BottomNavigationStateSwitching _value,
      $Res Function(_BottomNavigationStateSwitching) _then)
      : super(_value, (v) => _then(v as _BottomNavigationStateSwitching));

  @override
  _BottomNavigationStateSwitching get _value =>
      super._value as _BottomNavigationStateSwitching;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_BottomNavigationStateSwitching(
      from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as BottomNavigation,
      to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as BottomNavigation,
    ));
  }
}

/// @nodoc

class _$_BottomNavigationStateSwitching
    with DiagnosticableTreeMixin
    implements _BottomNavigationStateSwitching {
  const _$_BottomNavigationStateSwitching(this.from, this.to);

  @override
  final BottomNavigation from;
  @override
  final BottomNavigation to;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BottomNavigationState.switching(from: $from, to: $to)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BottomNavigationState.switching'))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BottomNavigationStateSwitching &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @JsonKey(ignore: true)
  @override
  _$BottomNavigationStateSwitchingCopyWith<_BottomNavigationStateSwitching>
      get copyWith => __$BottomNavigationStateSwitchingCopyWithImpl<
          _BottomNavigationStateSwitching>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BottomNavigation from, BottomNavigation to)
        switching,
    required TResult Function(BottomNavigation current) switched,
  }) {
    return switching(from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BottomNavigation from, BottomNavigation to)? switching,
    TResult Function(BottomNavigation current)? switched,
  }) {
    return switching?.call(from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BottomNavigation from, BottomNavigation to)? switching,
    TResult Function(BottomNavigation current)? switched,
    required TResult orElse(),
  }) {
    if (switching != null) {
      return switching(from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BottomNavigationStateSwitching value) switching,
    required TResult Function(_BottomNavigationStateSwitched value) switched,
  }) {
    return switching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BottomNavigationStateSwitching value)? switching,
    TResult Function(_BottomNavigationStateSwitched value)? switched,
  }) {
    return switching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BottomNavigationStateSwitching value)? switching,
    TResult Function(_BottomNavigationStateSwitched value)? switched,
    required TResult orElse(),
  }) {
    if (switching != null) {
      return switching(this);
    }
    return orElse();
  }
}

abstract class _BottomNavigationStateSwitching
    implements BottomNavigationState {
  const factory _BottomNavigationStateSwitching(
          BottomNavigation from, BottomNavigation to) =
      _$_BottomNavigationStateSwitching;

  BottomNavigation get from;
  BottomNavigation get to;
  @JsonKey(ignore: true)
  _$BottomNavigationStateSwitchingCopyWith<_BottomNavigationStateSwitching>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BottomNavigationStateSwitchedCopyWith<$Res> {
  factory _$BottomNavigationStateSwitchedCopyWith(
          _BottomNavigationStateSwitched value,
          $Res Function(_BottomNavigationStateSwitched) then) =
      __$BottomNavigationStateSwitchedCopyWithImpl<$Res>;
  $Res call({BottomNavigation current});
}

/// @nodoc
class __$BottomNavigationStateSwitchedCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res>
    implements _$BottomNavigationStateSwitchedCopyWith<$Res> {
  __$BottomNavigationStateSwitchedCopyWithImpl(
      _BottomNavigationStateSwitched _value,
      $Res Function(_BottomNavigationStateSwitched) _then)
      : super(_value, (v) => _then(v as _BottomNavigationStateSwitched));

  @override
  _BottomNavigationStateSwitched get _value =>
      super._value as _BottomNavigationStateSwitched;

  @override
  $Res call({
    Object? current = freezed,
  }) {
    return _then(_BottomNavigationStateSwitched(
      current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as BottomNavigation,
    ));
  }
}

/// @nodoc

class _$_BottomNavigationStateSwitched
    with DiagnosticableTreeMixin
    implements _BottomNavigationStateSwitched {
  const _$_BottomNavigationStateSwitched(this.current);

  @override
  final BottomNavigation current;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BottomNavigationState.switched(current: $current)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BottomNavigationState.switched'))
      ..add(DiagnosticsProperty('current', current));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BottomNavigationStateSwitched &&
            (identical(other.current, current) || other.current == current));
  }

  @override
  int get hashCode => Object.hash(runtimeType, current);

  @JsonKey(ignore: true)
  @override
  _$BottomNavigationStateSwitchedCopyWith<_BottomNavigationStateSwitched>
      get copyWith => __$BottomNavigationStateSwitchedCopyWithImpl<
          _BottomNavigationStateSwitched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BottomNavigation from, BottomNavigation to)
        switching,
    required TResult Function(BottomNavigation current) switched,
  }) {
    return switched(current);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BottomNavigation from, BottomNavigation to)? switching,
    TResult Function(BottomNavigation current)? switched,
  }) {
    return switched?.call(current);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BottomNavigation from, BottomNavigation to)? switching,
    TResult Function(BottomNavigation current)? switched,
    required TResult orElse(),
  }) {
    if (switched != null) {
      return switched(current);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BottomNavigationStateSwitching value) switching,
    required TResult Function(_BottomNavigationStateSwitched value) switched,
  }) {
    return switched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BottomNavigationStateSwitching value)? switching,
    TResult Function(_BottomNavigationStateSwitched value)? switched,
  }) {
    return switched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BottomNavigationStateSwitching value)? switching,
    TResult Function(_BottomNavigationStateSwitched value)? switched,
    required TResult orElse(),
  }) {
    if (switched != null) {
      return switched(this);
    }
    return orElse();
  }
}

abstract class _BottomNavigationStateSwitched implements BottomNavigationState {
  const factory _BottomNavigationStateSwitched(BottomNavigation current) =
      _$_BottomNavigationStateSwitched;

  BottomNavigation get current;
  @JsonKey(ignore: true)
  _$BottomNavigationStateSwitchedCopyWith<_BottomNavigationStateSwitched>
      get copyWith => throw _privateConstructorUsedError;
}
