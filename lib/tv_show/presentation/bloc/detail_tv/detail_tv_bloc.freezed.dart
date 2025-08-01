// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_tv_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DetailTvEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailTvEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailTvEvent()';
}


}

/// @nodoc
class $DetailTvEventCopyWith<$Res>  {
$DetailTvEventCopyWith(DetailTvEvent _, $Res Function(DetailTvEvent) __);
}


/// Adds pattern-matching-related methods to [DetailTvEvent].
extension DetailTvEventPatterns on DetailTvEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Fetch value)?  fetch,TResult Function( _AddToWatchlist value)?  addToWatchlist,TResult Function( _RemoveFromWatchlist value)?  removeFromWatchlist,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _AddToWatchlist() when addToWatchlist != null:
return addToWatchlist(_that);case _RemoveFromWatchlist() when removeFromWatchlist != null:
return removeFromWatchlist(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Fetch value)  fetch,required TResult Function( _AddToWatchlist value)  addToWatchlist,required TResult Function( _RemoveFromWatchlist value)  removeFromWatchlist,}){
final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that);case _AddToWatchlist():
return addToWatchlist(_that);case _RemoveFromWatchlist():
return removeFromWatchlist(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Fetch value)?  fetch,TResult? Function( _AddToWatchlist value)?  addToWatchlist,TResult? Function( _RemoveFromWatchlist value)?  removeFromWatchlist,}){
final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that);case _AddToWatchlist() when addToWatchlist != null:
return addToWatchlist(_that);case _RemoveFromWatchlist() when removeFromWatchlist != null:
return removeFromWatchlist(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id)?  fetch,TResult Function( TvShowDetail tv)?  addToWatchlist,TResult Function( TvShowDetail tv)?  removeFromWatchlist,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that.id);case _AddToWatchlist() when addToWatchlist != null:
return addToWatchlist(_that.tv);case _RemoveFromWatchlist() when removeFromWatchlist != null:
return removeFromWatchlist(_that.tv);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id)  fetch,required TResult Function( TvShowDetail tv)  addToWatchlist,required TResult Function( TvShowDetail tv)  removeFromWatchlist,}) {final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that.id);case _AddToWatchlist():
return addToWatchlist(_that.tv);case _RemoveFromWatchlist():
return removeFromWatchlist(_that.tv);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id)?  fetch,TResult? Function( TvShowDetail tv)?  addToWatchlist,TResult? Function( TvShowDetail tv)?  removeFromWatchlist,}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that.id);case _AddToWatchlist() when addToWatchlist != null:
return addToWatchlist(_that.tv);case _RemoveFromWatchlist() when removeFromWatchlist != null:
return removeFromWatchlist(_that.tv);case _:
  return null;

}
}

}

/// @nodoc


class _Fetch implements DetailTvEvent {
  const _Fetch(this.id);
  

 final  int id;

/// Create a copy of DetailTvEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchCopyWith<_Fetch> get copyWith => __$FetchCopyWithImpl<_Fetch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Fetch&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'DetailTvEvent.fetch(id: $id)';
}


}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res> implements $DetailTvEventCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) _then) = __$FetchCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$FetchCopyWithImpl<$Res>
    implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(this._self, this._then);

  final _Fetch _self;
  final $Res Function(_Fetch) _then;

/// Create a copy of DetailTvEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Fetch(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _AddToWatchlist implements DetailTvEvent {
  const _AddToWatchlist(this.tv);
  

 final  TvShowDetail tv;

/// Create a copy of DetailTvEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddToWatchlistCopyWith<_AddToWatchlist> get copyWith => __$AddToWatchlistCopyWithImpl<_AddToWatchlist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddToWatchlist&&(identical(other.tv, tv) || other.tv == tv));
}


@override
int get hashCode => Object.hash(runtimeType,tv);

@override
String toString() {
  return 'DetailTvEvent.addToWatchlist(tv: $tv)';
}


}

/// @nodoc
abstract mixin class _$AddToWatchlistCopyWith<$Res> implements $DetailTvEventCopyWith<$Res> {
  factory _$AddToWatchlistCopyWith(_AddToWatchlist value, $Res Function(_AddToWatchlist) _then) = __$AddToWatchlistCopyWithImpl;
@useResult
$Res call({
 TvShowDetail tv
});




}
/// @nodoc
class __$AddToWatchlistCopyWithImpl<$Res>
    implements _$AddToWatchlistCopyWith<$Res> {
  __$AddToWatchlistCopyWithImpl(this._self, this._then);

  final _AddToWatchlist _self;
  final $Res Function(_AddToWatchlist) _then;

/// Create a copy of DetailTvEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tv = null,}) {
  return _then(_AddToWatchlist(
null == tv ? _self.tv : tv // ignore: cast_nullable_to_non_nullable
as TvShowDetail,
  ));
}


}

/// @nodoc


class _RemoveFromWatchlist implements DetailTvEvent {
  const _RemoveFromWatchlist(this.tv);
  

 final  TvShowDetail tv;

/// Create a copy of DetailTvEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveFromWatchlistCopyWith<_RemoveFromWatchlist> get copyWith => __$RemoveFromWatchlistCopyWithImpl<_RemoveFromWatchlist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveFromWatchlist&&(identical(other.tv, tv) || other.tv == tv));
}


@override
int get hashCode => Object.hash(runtimeType,tv);

@override
String toString() {
  return 'DetailTvEvent.removeFromWatchlist(tv: $tv)';
}


}

/// @nodoc
abstract mixin class _$RemoveFromWatchlistCopyWith<$Res> implements $DetailTvEventCopyWith<$Res> {
  factory _$RemoveFromWatchlistCopyWith(_RemoveFromWatchlist value, $Res Function(_RemoveFromWatchlist) _then) = __$RemoveFromWatchlistCopyWithImpl;
@useResult
$Res call({
 TvShowDetail tv
});




}
/// @nodoc
class __$RemoveFromWatchlistCopyWithImpl<$Res>
    implements _$RemoveFromWatchlistCopyWith<$Res> {
  __$RemoveFromWatchlistCopyWithImpl(this._self, this._then);

  final _RemoveFromWatchlist _self;
  final $Res Function(_RemoveFromWatchlist) _then;

/// Create a copy of DetailTvEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tv = null,}) {
  return _then(_RemoveFromWatchlist(
null == tv ? _self.tv : tv // ignore: cast_nullable_to_non_nullable
as TvShowDetail,
  ));
}


}

/// @nodoc
mixin _$DetailTvState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailTvState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailTvState()';
}


}

/// @nodoc
class $DetailTvStateCopyWith<$Res>  {
$DetailTvStateCopyWith(DetailTvState _, $Res Function(DetailTvState) __);
}


/// Adds pattern-matching-related methods to [DetailTvState].
extension DetailTvStatePatterns on DetailTvState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,TResult Function( _Empty value)?  empty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _Empty() when empty != null:
return empty(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,required TResult Function( _Empty value)  empty,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _Empty():
return empty(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,TResult? Function( _Empty value)?  empty,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _Empty() when empty != null:
return empty(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( TvShowDetail tvDetail,  List<TvShow> recommendations,  bool isAddedToWatchlist)?  loaded,TResult Function( String message)?  error,TResult Function()?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.tvDetail,_that.recommendations,_that.isAddedToWatchlist);case _Error() when error != null:
return error(_that.message);case _Empty() when empty != null:
return empty();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( TvShowDetail tvDetail,  List<TvShow> recommendations,  bool isAddedToWatchlist)  loaded,required TResult Function( String message)  error,required TResult Function()  empty,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.tvDetail,_that.recommendations,_that.isAddedToWatchlist);case _Error():
return error(_that.message);case _Empty():
return empty();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( TvShowDetail tvDetail,  List<TvShow> recommendations,  bool isAddedToWatchlist)?  loaded,TResult? Function( String message)?  error,TResult? Function()?  empty,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.tvDetail,_that.recommendations,_that.isAddedToWatchlist);case _Error() when error != null:
return error(_that.message);case _Empty() when empty != null:
return empty();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements DetailTvState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailTvState.initial()';
}


}




/// @nodoc


class _Loading implements DetailTvState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailTvState.loading()';
}


}




/// @nodoc


class _Loaded implements DetailTvState {
  const _Loaded({required this.tvDetail, required final  List<TvShow> recommendations, required this.isAddedToWatchlist}): _recommendations = recommendations;
  

 final  TvShowDetail tvDetail;
 final  List<TvShow> _recommendations;
 List<TvShow> get recommendations {
  if (_recommendations is EqualUnmodifiableListView) return _recommendations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommendations);
}

 final  bool isAddedToWatchlist;

/// Create a copy of DetailTvState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.tvDetail, tvDetail) || other.tvDetail == tvDetail)&&const DeepCollectionEquality().equals(other._recommendations, _recommendations)&&(identical(other.isAddedToWatchlist, isAddedToWatchlist) || other.isAddedToWatchlist == isAddedToWatchlist));
}


@override
int get hashCode => Object.hash(runtimeType,tvDetail,const DeepCollectionEquality().hash(_recommendations),isAddedToWatchlist);

@override
String toString() {
  return 'DetailTvState.loaded(tvDetail: $tvDetail, recommendations: $recommendations, isAddedToWatchlist: $isAddedToWatchlist)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $DetailTvStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 TvShowDetail tvDetail, List<TvShow> recommendations, bool isAddedToWatchlist
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of DetailTvState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tvDetail = null,Object? recommendations = null,Object? isAddedToWatchlist = null,}) {
  return _then(_Loaded(
tvDetail: null == tvDetail ? _self.tvDetail : tvDetail // ignore: cast_nullable_to_non_nullable
as TvShowDetail,recommendations: null == recommendations ? _self._recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as List<TvShow>,isAddedToWatchlist: null == isAddedToWatchlist ? _self.isAddedToWatchlist : isAddedToWatchlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Error implements DetailTvState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of DetailTvState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DetailTvState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $DetailTvStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of DetailTvState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Empty implements DetailTvState {
  const _Empty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Empty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailTvState.empty()';
}


}




// dart format on
