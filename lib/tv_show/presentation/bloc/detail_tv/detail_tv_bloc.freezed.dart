// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_tv_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DetailTvEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetch,
    required TResult Function(TvShowDetail tv) addToWatchlist,
    required TResult Function(TvShowDetail tv) removeFromWatchlist,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetch,
    TResult? Function(TvShowDetail tv)? addToWatchlist,
    TResult? Function(TvShowDetail tv)? removeFromWatchlist,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetch,
    TResult Function(TvShowDetail tv)? addToWatchlist,
    TResult Function(TvShowDetail tv)? removeFromWatchlist,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToWatchlist value) addToWatchlist,
    required TResult Function(_RemoveFromWatchlist value) removeFromWatchlist,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWatchlist value)? addToWatchlist,
    TResult? Function(_RemoveFromWatchlist value)? removeFromWatchlist,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWatchlist value)? addToWatchlist,
    TResult Function(_RemoveFromWatchlist value)? removeFromWatchlist,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTvEventCopyWith<$Res> {
  factory $DetailTvEventCopyWith(
    DetailTvEvent value,
    $Res Function(DetailTvEvent) then,
  ) = _$DetailTvEventCopyWithImpl<$Res, DetailTvEvent>;
}

/// @nodoc
class _$DetailTvEventCopyWithImpl<$Res, $Val extends DetailTvEvent>
    implements $DetailTvEventCopyWith<$Res> {
  _$DetailTvEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailTvEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
    _$FetchImpl value,
    $Res Function(_$FetchImpl) then,
  ) = __$$FetchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$DetailTvEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
    _$FetchImpl _value,
    $Res Function(_$FetchImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DetailTvEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$FetchImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'DetailTvEvent.fetch(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DetailTvEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      __$$FetchImplCopyWithImpl<_$FetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetch,
    required TResult Function(TvShowDetail tv) addToWatchlist,
    required TResult Function(TvShowDetail tv) removeFromWatchlist,
  }) {
    return fetch(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetch,
    TResult? Function(TvShowDetail tv)? addToWatchlist,
    TResult? Function(TvShowDetail tv)? removeFromWatchlist,
  }) {
    return fetch?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetch,
    TResult Function(TvShowDetail tv)? addToWatchlist,
    TResult Function(TvShowDetail tv)? removeFromWatchlist,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToWatchlist value) addToWatchlist,
    required TResult Function(_RemoveFromWatchlist value) removeFromWatchlist,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWatchlist value)? addToWatchlist,
    TResult? Function(_RemoveFromWatchlist value)? removeFromWatchlist,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWatchlist value)? addToWatchlist,
    TResult Function(_RemoveFromWatchlist value)? removeFromWatchlist,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements DetailTvEvent {
  const factory _Fetch(final int id) = _$FetchImpl;

  int get id;

  /// Create a copy of DetailTvEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToWatchlistImplCopyWith<$Res> {
  factory _$$AddToWatchlistImplCopyWith(
    _$AddToWatchlistImpl value,
    $Res Function(_$AddToWatchlistImpl) then,
  ) = __$$AddToWatchlistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TvShowDetail tv});
}

/// @nodoc
class __$$AddToWatchlistImplCopyWithImpl<$Res>
    extends _$DetailTvEventCopyWithImpl<$Res, _$AddToWatchlistImpl>
    implements _$$AddToWatchlistImplCopyWith<$Res> {
  __$$AddToWatchlistImplCopyWithImpl(
    _$AddToWatchlistImpl _value,
    $Res Function(_$AddToWatchlistImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DetailTvEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tv = null}) {
    return _then(
      _$AddToWatchlistImpl(
        null == tv
            ? _value.tv
            : tv // ignore: cast_nullable_to_non_nullable
                  as TvShowDetail,
      ),
    );
  }
}

/// @nodoc

class _$AddToWatchlistImpl implements _AddToWatchlist {
  const _$AddToWatchlistImpl(this.tv);

  @override
  final TvShowDetail tv;

  @override
  String toString() {
    return 'DetailTvEvent.addToWatchlist(tv: $tv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToWatchlistImpl &&
            (identical(other.tv, tv) || other.tv == tv));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tv);

  /// Create a copy of DetailTvEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToWatchlistImplCopyWith<_$AddToWatchlistImpl> get copyWith =>
      __$$AddToWatchlistImplCopyWithImpl<_$AddToWatchlistImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetch,
    required TResult Function(TvShowDetail tv) addToWatchlist,
    required TResult Function(TvShowDetail tv) removeFromWatchlist,
  }) {
    return addToWatchlist(tv);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetch,
    TResult? Function(TvShowDetail tv)? addToWatchlist,
    TResult? Function(TvShowDetail tv)? removeFromWatchlist,
  }) {
    return addToWatchlist?.call(tv);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetch,
    TResult Function(TvShowDetail tv)? addToWatchlist,
    TResult Function(TvShowDetail tv)? removeFromWatchlist,
    required TResult orElse(),
  }) {
    if (addToWatchlist != null) {
      return addToWatchlist(tv);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToWatchlist value) addToWatchlist,
    required TResult Function(_RemoveFromWatchlist value) removeFromWatchlist,
  }) {
    return addToWatchlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWatchlist value)? addToWatchlist,
    TResult? Function(_RemoveFromWatchlist value)? removeFromWatchlist,
  }) {
    return addToWatchlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWatchlist value)? addToWatchlist,
    TResult Function(_RemoveFromWatchlist value)? removeFromWatchlist,
    required TResult orElse(),
  }) {
    if (addToWatchlist != null) {
      return addToWatchlist(this);
    }
    return orElse();
  }
}

abstract class _AddToWatchlist implements DetailTvEvent {
  const factory _AddToWatchlist(final TvShowDetail tv) = _$AddToWatchlistImpl;

  TvShowDetail get tv;

  /// Create a copy of DetailTvEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToWatchlistImplCopyWith<_$AddToWatchlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromWatchlistImplCopyWith<$Res> {
  factory _$$RemoveFromWatchlistImplCopyWith(
    _$RemoveFromWatchlistImpl value,
    $Res Function(_$RemoveFromWatchlistImpl) then,
  ) = __$$RemoveFromWatchlistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TvShowDetail tv});
}

/// @nodoc
class __$$RemoveFromWatchlistImplCopyWithImpl<$Res>
    extends _$DetailTvEventCopyWithImpl<$Res, _$RemoveFromWatchlistImpl>
    implements _$$RemoveFromWatchlistImplCopyWith<$Res> {
  __$$RemoveFromWatchlistImplCopyWithImpl(
    _$RemoveFromWatchlistImpl _value,
    $Res Function(_$RemoveFromWatchlistImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DetailTvEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? tv = null}) {
    return _then(
      _$RemoveFromWatchlistImpl(
        null == tv
            ? _value.tv
            : tv // ignore: cast_nullable_to_non_nullable
                  as TvShowDetail,
      ),
    );
  }
}

/// @nodoc

class _$RemoveFromWatchlistImpl implements _RemoveFromWatchlist {
  const _$RemoveFromWatchlistImpl(this.tv);

  @override
  final TvShowDetail tv;

  @override
  String toString() {
    return 'DetailTvEvent.removeFromWatchlist(tv: $tv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromWatchlistImpl &&
            (identical(other.tv, tv) || other.tv == tv));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tv);

  /// Create a copy of DetailTvEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromWatchlistImplCopyWith<_$RemoveFromWatchlistImpl> get copyWith =>
      __$$RemoveFromWatchlistImplCopyWithImpl<_$RemoveFromWatchlistImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetch,
    required TResult Function(TvShowDetail tv) addToWatchlist,
    required TResult Function(TvShowDetail tv) removeFromWatchlist,
  }) {
    return removeFromWatchlist(tv);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? fetch,
    TResult? Function(TvShowDetail tv)? addToWatchlist,
    TResult? Function(TvShowDetail tv)? removeFromWatchlist,
  }) {
    return removeFromWatchlist?.call(tv);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetch,
    TResult Function(TvShowDetail tv)? addToWatchlist,
    TResult Function(TvShowDetail tv)? removeFromWatchlist,
    required TResult orElse(),
  }) {
    if (removeFromWatchlist != null) {
      return removeFromWatchlist(tv);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToWatchlist value) addToWatchlist,
    required TResult Function(_RemoveFromWatchlist value) removeFromWatchlist,
  }) {
    return removeFromWatchlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWatchlist value)? addToWatchlist,
    TResult? Function(_RemoveFromWatchlist value)? removeFromWatchlist,
  }) {
    return removeFromWatchlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWatchlist value)? addToWatchlist,
    TResult Function(_RemoveFromWatchlist value)? removeFromWatchlist,
    required TResult orElse(),
  }) {
    if (removeFromWatchlist != null) {
      return removeFromWatchlist(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromWatchlist implements DetailTvEvent {
  const factory _RemoveFromWatchlist(final TvShowDetail tv) =
      _$RemoveFromWatchlistImpl;

  TvShowDetail get tv;

  /// Create a copy of DetailTvEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFromWatchlistImplCopyWith<_$RemoveFromWatchlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailTvState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function() empty,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function()? empty,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTvStateCopyWith<$Res> {
  factory $DetailTvStateCopyWith(
    DetailTvState value,
    $Res Function(DetailTvState) then,
  ) = _$DetailTvStateCopyWithImpl<$Res, DetailTvState>;
}

/// @nodoc
class _$DetailTvStateCopyWithImpl<$Res, $Val extends DetailTvState>
    implements $DetailTvStateCopyWith<$Res> {
  _$DetailTvStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailTvState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DetailTvStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DetailTvState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DetailTvState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DetailTvState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DetailTvStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DetailTvState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DetailTvState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DetailTvState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
    _$LoadedImpl value,
    $Res Function(_$LoadedImpl) then,
  ) = __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    TvShowDetail tvDetail,
    List<TvShow> recommendations,
    bool isAddedToWatchlist,
  });
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$DetailTvStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
    _$LoadedImpl _value,
    $Res Function(_$LoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DetailTvState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tvDetail = null,
    Object? recommendations = null,
    Object? isAddedToWatchlist = null,
  }) {
    return _then(
      _$LoadedImpl(
        tvDetail: null == tvDetail
            ? _value.tvDetail
            : tvDetail // ignore: cast_nullable_to_non_nullable
                  as TvShowDetail,
        recommendations: null == recommendations
            ? _value._recommendations
            : recommendations // ignore: cast_nullable_to_non_nullable
                  as List<TvShow>,
        isAddedToWatchlist: null == isAddedToWatchlist
            ? _value.isAddedToWatchlist
            : isAddedToWatchlist // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({
    required this.tvDetail,
    required final List<TvShow> recommendations,
    required this.isAddedToWatchlist,
  }) : _recommendations = recommendations;

  @override
  final TvShowDetail tvDetail;
  final List<TvShow> _recommendations;
  @override
  List<TvShow> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  @override
  final bool isAddedToWatchlist;

  @override
  String toString() {
    return 'DetailTvState.loaded(tvDetail: $tvDetail, recommendations: $recommendations, isAddedToWatchlist: $isAddedToWatchlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.tvDetail, tvDetail) ||
                other.tvDetail == tvDetail) &&
            const DeepCollectionEquality().equals(
              other._recommendations,
              _recommendations,
            ) &&
            (identical(other.isAddedToWatchlist, isAddedToWatchlist) ||
                other.isAddedToWatchlist == isAddedToWatchlist));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    tvDetail,
    const DeepCollectionEquality().hash(_recommendations),
    isAddedToWatchlist,
  );

  /// Create a copy of DetailTvState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function() empty,
  }) {
    return loaded(tvDetail, recommendations, isAddedToWatchlist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function()? empty,
  }) {
    return loaded?.call(tvDetail, recommendations, isAddedToWatchlist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tvDetail, recommendations, isAddedToWatchlist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DetailTvState {
  const factory _Loaded({
    required final TvShowDetail tvDetail,
    required final List<TvShow> recommendations,
    required final bool isAddedToWatchlist,
  }) = _$LoadedImpl;

  TvShowDetail get tvDetail;
  List<TvShow> get recommendations;
  bool get isAddedToWatchlist;

  /// Create a copy of DetailTvState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$DetailTvStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DetailTvState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DetailTvState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DetailTvState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function() empty,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function()? empty,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DetailTvState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of DetailTvState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
    _$EmptyImpl value,
    $Res Function(_$EmptyImpl) then,
  ) = __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$DetailTvStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
    _$EmptyImpl _value,
    $Res Function(_$EmptyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DetailTvState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'DetailTvState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )
    loaded,
    required TResult Function(String message) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )?
    loaded,
    TResult? Function(String message)? error,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      TvShowDetail tvDetail,
      List<TvShow> recommendations,
      bool isAddedToWatchlist,
    )?
    loaded,
    TResult Function(String message)? error,
    TResult Function()? empty,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements DetailTvState {
  const factory _Empty() = _$EmptyImpl;
}
