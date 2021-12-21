// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostStateTearOff {
  const _$PostStateTearOff();

  _PostStateEmpty empty() {
    return const _PostStateEmpty();
  }

  _PostStateFetching fetching() {
    return const _PostStateFetching();
  }

  _PostStateFetched fetched(List<Post> posts) {
    return _PostStateFetched(
      posts,
    );
  }

  _PostStateSelected selected(Post post) {
    return _PostStateSelected(
      post,
    );
  }

  _PostStateRefreshed refreshed() {
    return const _PostStateRefreshed();
  }

  _PostStateError error() {
    return const _PostStateError();
  }
}

/// @nodoc
const $PostState = _$PostStateTearOff();

/// @nodoc
mixin _$PostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() fetching,
    required TResult Function(List<Post> posts) fetched,
    required TResult Function(Post post) selected,
    required TResult Function() refreshed,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? fetching,
    TResult Function(List<Post> posts)? fetched,
    TResult Function(Post post)? selected,
    TResult Function()? refreshed,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? fetching,
    TResult Function(List<Post> posts)? fetched,
    TResult Function(Post post)? selected,
    TResult Function()? refreshed,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostStateEmpty value) empty,
    required TResult Function(_PostStateFetching value) fetching,
    required TResult Function(_PostStateFetched value) fetched,
    required TResult Function(_PostStateSelected value) selected,
    required TResult Function(_PostStateRefreshed value) refreshed,
    required TResult Function(_PostStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostStateEmpty value)? empty,
    TResult Function(_PostStateFetching value)? fetching,
    TResult Function(_PostStateFetched value)? fetched,
    TResult Function(_PostStateSelected value)? selected,
    TResult Function(_PostStateRefreshed value)? refreshed,
    TResult Function(_PostStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostStateEmpty value)? empty,
    TResult Function(_PostStateFetching value)? fetching,
    TResult Function(_PostStateFetched value)? fetched,
    TResult Function(_PostStateSelected value)? selected,
    TResult Function(_PostStateRefreshed value)? refreshed,
    TResult Function(_PostStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res> implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  final PostState _value;
  // ignore: unused_field
  final $Res Function(PostState) _then;
}

/// @nodoc
abstract class _$PostStateEmptyCopyWith<$Res> {
  factory _$PostStateEmptyCopyWith(
          _PostStateEmpty value, $Res Function(_PostStateEmpty) then) =
      __$PostStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostStateEmptyCopyWithImpl<$Res> extends _$PostStateCopyWithImpl<$Res>
    implements _$PostStateEmptyCopyWith<$Res> {
  __$PostStateEmptyCopyWithImpl(
      _PostStateEmpty _value, $Res Function(_PostStateEmpty) _then)
      : super(_value, (v) => _then(v as _PostStateEmpty));

  @override
  _PostStateEmpty get _value => super._value as _PostStateEmpty;
}

/// @nodoc

class _$_PostStateEmpty implements _PostStateEmpty {
  const _$_PostStateEmpty();

  @override
  String toString() {
    return 'PostState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PostStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() fetching,
    required TResult Function(List<Post> posts) fetched,
    required TResult Function(Post post) selected,
    required TResult Function() refreshed,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? fetching,
    TResult Function(List<Post> posts)? fetched,
    TResult Function(Post post)? selected,
    TResult Function()? refreshed,
    TResult Function()? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? fetching,
    TResult Function(List<Post> posts)? fetched,
    TResult Function(Post post)? selected,
    TResult Function()? refreshed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostStateEmpty value) empty,
    required TResult Function(_PostStateFetching value) fetching,
    required TResult Function(_PostStateFetched value) fetched,
    required TResult Function(_PostStateSelected value) selected,
    required TResult Function(_PostStateRefreshed value) refreshed,
    required TResult Function(_PostStateError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostStateEmpty value)? empty,
    TResult Function(_PostStateFetching value)? fetching,
    TResult Function(_PostStateFetched value)? fetched,
    TResult Function(_PostStateSelected value)? selected,
    TResult Function(_PostStateRefreshed value)? refreshed,
    TResult Function(_PostStateError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostStateEmpty value)? empty,
    TResult Function(_PostStateFetching value)? fetching,
    TResult Function(_PostStateFetched value)? fetched,
    TResult Function(_PostStateSelected value)? selected,
    TResult Function(_PostStateRefreshed value)? refreshed,
    TResult Function(_PostStateError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _PostStateEmpty implements PostState {
  const factory _PostStateEmpty() = _$_PostStateEmpty;
}

/// @nodoc
abstract class _$PostStateFetchingCopyWith<$Res> {
  factory _$PostStateFetchingCopyWith(
          _PostStateFetching value, $Res Function(_PostStateFetching) then) =
      __$PostStateFetchingCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostStateFetchingCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res>
    implements _$PostStateFetchingCopyWith<$Res> {
  __$PostStateFetchingCopyWithImpl(
      _PostStateFetching _value, $Res Function(_PostStateFetching) _then)
      : super(_value, (v) => _then(v as _PostStateFetching));

  @override
  _PostStateFetching get _value => super._value as _PostStateFetching;
}

/// @nodoc

class _$_PostStateFetching implements _PostStateFetching {
  const _$_PostStateFetching();

  @override
  String toString() {
    return 'PostState.fetching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PostStateFetching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() fetching,
    required TResult Function(List<Post> posts) fetched,
    required TResult Function(Post post) selected,
    required TResult Function() refreshed,
    required TResult Function() error,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? fetching,
    TResult Function(List<Post> posts)? fetched,
    TResult Function(Post post)? selected,
    TResult Function()? refreshed,
    TResult Function()? error,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? fetching,
    TResult Function(List<Post> posts)? fetched,
    TResult Function(Post post)? selected,
    TResult Function()? refreshed,
    TResult Function()? error,
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
    required TResult Function(_PostStateEmpty value) empty,
    required TResult Function(_PostStateFetching value) fetching,
    required TResult Function(_PostStateFetched value) fetched,
    required TResult Function(_PostStateSelected value) selected,
    required TResult Function(_PostStateRefreshed value) refreshed,
    required TResult Function(_PostStateError value) error,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostStateEmpty value)? empty,
    TResult Function(_PostStateFetching value)? fetching,
    TResult Function(_PostStateFetched value)? fetched,
    TResult Function(_PostStateSelected value)? selected,
    TResult Function(_PostStateRefreshed value)? refreshed,
    TResult Function(_PostStateError value)? error,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostStateEmpty value)? empty,
    TResult Function(_PostStateFetching value)? fetching,
    TResult Function(_PostStateFetched value)? fetched,
    TResult Function(_PostStateSelected value)? selected,
    TResult Function(_PostStateRefreshed value)? refreshed,
    TResult Function(_PostStateError value)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _PostStateFetching implements PostState {
  const factory _PostStateFetching() = _$_PostStateFetching;
}

/// @nodoc
abstract class _$PostStateFetchedCopyWith<$Res> {
  factory _$PostStateFetchedCopyWith(
          _PostStateFetched value, $Res Function(_PostStateFetched) then) =
      __$PostStateFetchedCopyWithImpl<$Res>;
  $Res call({List<Post> posts});
}

/// @nodoc
class __$PostStateFetchedCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res>
    implements _$PostStateFetchedCopyWith<$Res> {
  __$PostStateFetchedCopyWithImpl(
      _PostStateFetched _value, $Res Function(_PostStateFetched) _then)
      : super(_value, (v) => _then(v as _PostStateFetched));

  @override
  _PostStateFetched get _value => super._value as _PostStateFetched;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_PostStateFetched(
      posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$_PostStateFetched implements _PostStateFetched {
  const _$_PostStateFetched(this.posts);

  @override
  final List<Post> posts;

  @override
  String toString() {
    return 'PostState.fetched(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostStateFetched &&
            const DeepCollectionEquality().equals(other.posts, posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posts));

  @JsonKey(ignore: true)
  @override
  _$PostStateFetchedCopyWith<_PostStateFetched> get copyWith =>
      __$PostStateFetchedCopyWithImpl<_PostStateFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() fetching,
    required TResult Function(List<Post> posts) fetched,
    required TResult Function(Post post) selected,
    required TResult Function() refreshed,
    required TResult Function() error,
  }) {
    return fetched(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? fetching,
    TResult Function(List<Post> posts)? fetched,
    TResult Function(Post post)? selected,
    TResult Function()? refreshed,
    TResult Function()? error,
  }) {
    return fetched?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? fetching,
    TResult Function(List<Post> posts)? fetched,
    TResult Function(Post post)? selected,
    TResult Function()? refreshed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostStateEmpty value) empty,
    required TResult Function(_PostStateFetching value) fetching,
    required TResult Function(_PostStateFetched value) fetched,
    required TResult Function(_PostStateSelected value) selected,
    required TResult Function(_PostStateRefreshed value) refreshed,
    required TResult Function(_PostStateError value) error,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostStateEmpty value)? empty,
    TResult Function(_PostStateFetching value)? fetching,
    TResult Function(_PostStateFetched value)? fetched,
    TResult Function(_PostStateSelected value)? selected,
    TResult Function(_PostStateRefreshed value)? refreshed,
    TResult Function(_PostStateError value)? error,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostStateEmpty value)? empty,
    TResult Function(_PostStateFetching value)? fetching,
    TResult Function(_PostStateFetched value)? fetched,
    TResult Function(_PostStateSelected value)? selected,
    TResult Function(_PostStateRefreshed value)? refreshed,
    TResult Function(_PostStateError value)? error,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _PostStateFetched implements PostState {
  const factory _PostStateFetched(List<Post> posts) = _$_PostStateFetched;

  List<Post> get posts;
  @JsonKey(ignore: true)
  _$PostStateFetchedCopyWith<_PostStateFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostStateSelectedCopyWith<$Res> {
  factory _$PostStateSelectedCopyWith(
          _PostStateSelected value, $Res Function(_PostStateSelected) then) =
      __$PostStateSelectedCopyWithImpl<$Res>;
  $Res call({Post post});
}

/// @nodoc
class __$PostStateSelectedCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res>
    implements _$PostStateSelectedCopyWith<$Res> {
  __$PostStateSelectedCopyWithImpl(
      _PostStateSelected _value, $Res Function(_PostStateSelected) _then)
      : super(_value, (v) => _then(v as _PostStateSelected));

  @override
  _PostStateSelected get _value => super._value as _PostStateSelected;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_PostStateSelected(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$_PostStateSelected implements _PostStateSelected {
  const _$_PostStateSelected(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'PostState.selected(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostStateSelected &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  @JsonKey(ignore: true)
  @override
  _$PostStateSelectedCopyWith<_PostStateSelected> get copyWith =>
      __$PostStateSelectedCopyWithImpl<_PostStateSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() fetching,
    required TResult Function(List<Post> posts) fetched,
    required TResult Function(Post post) selected,
    required TResult Function() refreshed,
    required TResult Function() error,
  }) {
    return selected(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? fetching,
    TResult Function(List<Post> posts)? fetched,
    TResult Function(Post post)? selected,
    TResult Function()? refreshed,
    TResult Function()? error,
  }) {
    return selected?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? fetching,
    TResult Function(List<Post> posts)? fetched,
    TResult Function(Post post)? selected,
    TResult Function()? refreshed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostStateEmpty value) empty,
    required TResult Function(_PostStateFetching value) fetching,
    required TResult Function(_PostStateFetched value) fetched,
    required TResult Function(_PostStateSelected value) selected,
    required TResult Function(_PostStateRefreshed value) refreshed,
    required TResult Function(_PostStateError value) error,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostStateEmpty value)? empty,
    TResult Function(_PostStateFetching value)? fetching,
    TResult Function(_PostStateFetched value)? fetched,
    TResult Function(_PostStateSelected value)? selected,
    TResult Function(_PostStateRefreshed value)? refreshed,
    TResult Function(_PostStateError value)? error,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostStateEmpty value)? empty,
    TResult Function(_PostStateFetching value)? fetching,
    TResult Function(_PostStateFetched value)? fetched,
    TResult Function(_PostStateSelected value)? selected,
    TResult Function(_PostStateRefreshed value)? refreshed,
    TResult Function(_PostStateError value)? error,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _PostStateSelected implements PostState {
  const factory _PostStateSelected(Post post) = _$_PostStateSelected;

  Post get post;
  @JsonKey(ignore: true)
  _$PostStateSelectedCopyWith<_PostStateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostStateRefreshedCopyWith<$Res> {
  factory _$PostStateRefreshedCopyWith(
          _PostStateRefreshed value, $Res Function(_PostStateRefreshed) then) =
      __$PostStateRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostStateRefreshedCopyWithImpl<$Res>
    extends _$PostStateCopyWithImpl<$Res>
    implements _$PostStateRefreshedCopyWith<$Res> {
  __$PostStateRefreshedCopyWithImpl(
      _PostStateRefreshed _value, $Res Function(_PostStateRefreshed) _then)
      : super(_value, (v) => _then(v as _PostStateRefreshed));

  @override
  _PostStateRefreshed get _value => super._value as _PostStateRefreshed;
}

/// @nodoc

class _$_PostStateRefreshed implements _PostStateRefreshed {
  const _$_PostStateRefreshed();

  @override
  String toString() {
    return 'PostState.refreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PostStateRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() fetching,
    required TResult Function(List<Post> posts) fetched,
    required TResult Function(Post post) selected,
    required TResult Function() refreshed,
    required TResult Function() error,
  }) {
    return refreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? fetching,
    TResult Function(List<Post> posts)? fetched,
    TResult Function(Post post)? selected,
    TResult Function()? refreshed,
    TResult Function()? error,
  }) {
    return refreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? fetching,
    TResult Function(List<Post> posts)? fetched,
    TResult Function(Post post)? selected,
    TResult Function()? refreshed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostStateEmpty value) empty,
    required TResult Function(_PostStateFetching value) fetching,
    required TResult Function(_PostStateFetched value) fetched,
    required TResult Function(_PostStateSelected value) selected,
    required TResult Function(_PostStateRefreshed value) refreshed,
    required TResult Function(_PostStateError value) error,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostStateEmpty value)? empty,
    TResult Function(_PostStateFetching value)? fetching,
    TResult Function(_PostStateFetched value)? fetched,
    TResult Function(_PostStateSelected value)? selected,
    TResult Function(_PostStateRefreshed value)? refreshed,
    TResult Function(_PostStateError value)? error,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostStateEmpty value)? empty,
    TResult Function(_PostStateFetching value)? fetching,
    TResult Function(_PostStateFetched value)? fetched,
    TResult Function(_PostStateSelected value)? selected,
    TResult Function(_PostStateRefreshed value)? refreshed,
    TResult Function(_PostStateError value)? error,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class _PostStateRefreshed implements PostState {
  const factory _PostStateRefreshed() = _$_PostStateRefreshed;
}

/// @nodoc
abstract class _$PostStateErrorCopyWith<$Res> {
  factory _$PostStateErrorCopyWith(
          _PostStateError value, $Res Function(_PostStateError) then) =
      __$PostStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$PostStateErrorCopyWithImpl<$Res> extends _$PostStateCopyWithImpl<$Res>
    implements _$PostStateErrorCopyWith<$Res> {
  __$PostStateErrorCopyWithImpl(
      _PostStateError _value, $Res Function(_PostStateError) _then)
      : super(_value, (v) => _then(v as _PostStateError));

  @override
  _PostStateError get _value => super._value as _PostStateError;
}

/// @nodoc

class _$_PostStateError implements _PostStateError {
  const _$_PostStateError();

  @override
  String toString() {
    return 'PostState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PostStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() fetching,
    required TResult Function(List<Post> posts) fetched,
    required TResult Function(Post post) selected,
    required TResult Function() refreshed,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? fetching,
    TResult Function(List<Post> posts)? fetched,
    TResult Function(Post post)? selected,
    TResult Function()? refreshed,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? fetching,
    TResult Function(List<Post> posts)? fetched,
    TResult Function(Post post)? selected,
    TResult Function()? refreshed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostStateEmpty value) empty,
    required TResult Function(_PostStateFetching value) fetching,
    required TResult Function(_PostStateFetched value) fetched,
    required TResult Function(_PostStateSelected value) selected,
    required TResult Function(_PostStateRefreshed value) refreshed,
    required TResult Function(_PostStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PostStateEmpty value)? empty,
    TResult Function(_PostStateFetching value)? fetching,
    TResult Function(_PostStateFetched value)? fetched,
    TResult Function(_PostStateSelected value)? selected,
    TResult Function(_PostStateRefreshed value)? refreshed,
    TResult Function(_PostStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostStateEmpty value)? empty,
    TResult Function(_PostStateFetching value)? fetching,
    TResult Function(_PostStateFetched value)? fetched,
    TResult Function(_PostStateSelected value)? selected,
    TResult Function(_PostStateRefreshed value)? refreshed,
    TResult Function(_PostStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PostStateError implements PostState {
  const factory _PostStateError() = _$_PostStateError;
}
