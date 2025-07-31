// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DetailMovieEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailMovieEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailMovieEvent()';
}


}

/// @nodoc
class $DetailMovieEventCopyWith<$Res>  {
$DetailMovieEventCopyWith(DetailMovieEvent _, $Res Function(DetailMovieEvent) __);
}


/// Adds pattern-matching-related methods to [DetailMovieEvent].
extension DetailMovieEventPatterns on DetailMovieEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int id)?  fetch,TResult Function( MovieDetail movie)?  addToWatchlist,TResult Function( MovieDetail movie)?  removeFromWatchlist,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that.id);case _AddToWatchlist() when addToWatchlist != null:
return addToWatchlist(_that.movie);case _RemoveFromWatchlist() when removeFromWatchlist != null:
return removeFromWatchlist(_that.movie);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int id)  fetch,required TResult Function( MovieDetail movie)  addToWatchlist,required TResult Function( MovieDetail movie)  removeFromWatchlist,}) {final _that = this;
switch (_that) {
case _Fetch():
return fetch(_that.id);case _AddToWatchlist():
return addToWatchlist(_that.movie);case _RemoveFromWatchlist():
return removeFromWatchlist(_that.movie);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int id)?  fetch,TResult? Function( MovieDetail movie)?  addToWatchlist,TResult? Function( MovieDetail movie)?  removeFromWatchlist,}) {final _that = this;
switch (_that) {
case _Fetch() when fetch != null:
return fetch(_that.id);case _AddToWatchlist() when addToWatchlist != null:
return addToWatchlist(_that.movie);case _RemoveFromWatchlist() when removeFromWatchlist != null:
return removeFromWatchlist(_that.movie);case _:
  return null;

}
}

}

/// @nodoc


class _Fetch implements DetailMovieEvent {
  const _Fetch(this.id);
  

 final  int id;

/// Create a copy of DetailMovieEvent
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
  return 'DetailMovieEvent.fetch(id: $id)';
}


}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res> implements $DetailMovieEventCopyWith<$Res> {
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

/// Create a copy of DetailMovieEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_Fetch(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _AddToWatchlist implements DetailMovieEvent {
  const _AddToWatchlist(this.movie);
  

 final  MovieDetail movie;

/// Create a copy of DetailMovieEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddToWatchlistCopyWith<_AddToWatchlist> get copyWith => __$AddToWatchlistCopyWithImpl<_AddToWatchlist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddToWatchlist&&(identical(other.movie, movie) || other.movie == movie));
}


@override
int get hashCode => Object.hash(runtimeType,movie);

@override
String toString() {
  return 'DetailMovieEvent.addToWatchlist(movie: $movie)';
}


}

/// @nodoc
abstract mixin class _$AddToWatchlistCopyWith<$Res> implements $DetailMovieEventCopyWith<$Res> {
  factory _$AddToWatchlistCopyWith(_AddToWatchlist value, $Res Function(_AddToWatchlist) _then) = __$AddToWatchlistCopyWithImpl;
@useResult
$Res call({
 MovieDetail movie
});




}
/// @nodoc
class __$AddToWatchlistCopyWithImpl<$Res>
    implements _$AddToWatchlistCopyWith<$Res> {
  __$AddToWatchlistCopyWithImpl(this._self, this._then);

  final _AddToWatchlist _self;
  final $Res Function(_AddToWatchlist) _then;

/// Create a copy of DetailMovieEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movie = null,}) {
  return _then(_AddToWatchlist(
null == movie ? _self.movie : movie // ignore: cast_nullable_to_non_nullable
as MovieDetail,
  ));
}


}

/// @nodoc


class _RemoveFromWatchlist implements DetailMovieEvent {
  const _RemoveFromWatchlist(this.movie);
  

 final  MovieDetail movie;

/// Create a copy of DetailMovieEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveFromWatchlistCopyWith<_RemoveFromWatchlist> get copyWith => __$RemoveFromWatchlistCopyWithImpl<_RemoveFromWatchlist>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveFromWatchlist&&(identical(other.movie, movie) || other.movie == movie));
}


@override
int get hashCode => Object.hash(runtimeType,movie);

@override
String toString() {
  return 'DetailMovieEvent.removeFromWatchlist(movie: $movie)';
}


}

/// @nodoc
abstract mixin class _$RemoveFromWatchlistCopyWith<$Res> implements $DetailMovieEventCopyWith<$Res> {
  factory _$RemoveFromWatchlistCopyWith(_RemoveFromWatchlist value, $Res Function(_RemoveFromWatchlist) _then) = __$RemoveFromWatchlistCopyWithImpl;
@useResult
$Res call({
 MovieDetail movie
});




}
/// @nodoc
class __$RemoveFromWatchlistCopyWithImpl<$Res>
    implements _$RemoveFromWatchlistCopyWith<$Res> {
  __$RemoveFromWatchlistCopyWithImpl(this._self, this._then);

  final _RemoveFromWatchlist _self;
  final $Res Function(_RemoveFromWatchlist) _then;

/// Create a copy of DetailMovieEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movie = null,}) {
  return _then(_RemoveFromWatchlist(
null == movie ? _self.movie : movie // ignore: cast_nullable_to_non_nullable
as MovieDetail,
  ));
}


}

/// @nodoc
mixin _$DetailMovieState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailMovieState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailMovieState()';
}


}

/// @nodoc
class $DetailMovieStateCopyWith<$Res>  {
$DetailMovieStateCopyWith(DetailMovieState _, $Res Function(DetailMovieState) __);
}


/// Adds pattern-matching-related methods to [DetailMovieState].
extension DetailMovieStatePatterns on DetailMovieState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( MovieDetail movies,  List<Movie> recommendations,  bool isAddedToWatchlist)?  loaded,TResult Function( String message)?  error,TResult Function()?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.movies,_that.recommendations,_that.isAddedToWatchlist);case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( MovieDetail movies,  List<Movie> recommendations,  bool isAddedToWatchlist)  loaded,required TResult Function( String message)  error,required TResult Function()  empty,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.movies,_that.recommendations,_that.isAddedToWatchlist);case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( MovieDetail movies,  List<Movie> recommendations,  bool isAddedToWatchlist)?  loaded,TResult? Function( String message)?  error,TResult? Function()?  empty,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.movies,_that.recommendations,_that.isAddedToWatchlist);case _Error() when error != null:
return error(_that.message);case _Empty() when empty != null:
return empty();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements DetailMovieState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailMovieState.initial()';
}


}




/// @nodoc


class _Loading implements DetailMovieState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailMovieState.loading()';
}


}




/// @nodoc


class _Loaded implements DetailMovieState {
  const _Loaded({required this.movies, required final  List<Movie> recommendations, required this.isAddedToWatchlist}): _recommendations = recommendations;
  

 final  MovieDetail movies;
 final  List<Movie> _recommendations;
 List<Movie> get recommendations {
  if (_recommendations is EqualUnmodifiableListView) return _recommendations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommendations);
}

 final  bool isAddedToWatchlist;

/// Create a copy of DetailMovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.movies, movies) || other.movies == movies)&&const DeepCollectionEquality().equals(other._recommendations, _recommendations)&&(identical(other.isAddedToWatchlist, isAddedToWatchlist) || other.isAddedToWatchlist == isAddedToWatchlist));
}


@override
int get hashCode => Object.hash(runtimeType,movies,const DeepCollectionEquality().hash(_recommendations),isAddedToWatchlist);

@override
String toString() {
  return 'DetailMovieState.loaded(movies: $movies, recommendations: $recommendations, isAddedToWatchlist: $isAddedToWatchlist)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $DetailMovieStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 MovieDetail movies, List<Movie> recommendations, bool isAddedToWatchlist
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of DetailMovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movies = null,Object? recommendations = null,Object? isAddedToWatchlist = null,}) {
  return _then(_Loaded(
movies: null == movies ? _self.movies : movies // ignore: cast_nullable_to_non_nullable
as MovieDetail,recommendations: null == recommendations ? _self._recommendations : recommendations // ignore: cast_nullable_to_non_nullable
as List<Movie>,isAddedToWatchlist: null == isAddedToWatchlist ? _self.isAddedToWatchlist : isAddedToWatchlist // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Error implements DetailMovieState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of DetailMovieState
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
  return 'DetailMovieState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $DetailMovieStateCopyWith<$Res> {
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

/// Create a copy of DetailMovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Empty implements DetailMovieState {
  const _Empty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Empty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailMovieState.empty()';
}


}




// dart format on
