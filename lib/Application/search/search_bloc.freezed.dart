// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initilize,
    required TResult Function(String moviequery) searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initilize,
    TResult? Function(String moviequery)? searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initilize,
    TResult Function(String moviequery)? searchmovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initilize value) initilize,
    required TResult Function(SearchMovie value) searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initilize value)? initilize,
    TResult? Function(SearchMovie value)? searchmovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initilize value)? initilize,
    TResult Function(SearchMovie value)? searchmovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitilizeCopyWith<$Res> {
  factory _$$InitilizeCopyWith(
          _$Initilize value, $Res Function(_$Initilize) then) =
      __$$InitilizeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitilizeCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$Initilize>
    implements _$$InitilizeCopyWith<$Res> {
  __$$InitilizeCopyWithImpl(
      _$Initilize _value, $Res Function(_$Initilize) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initilize implements Initilize {
  const _$Initilize();

  @override
  String toString() {
    return 'SearchEvent.initilize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initilize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initilize,
    required TResult Function(String moviequery) searchmovie,
  }) {
    return initilize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initilize,
    TResult? Function(String moviequery)? searchmovie,
  }) {
    return initilize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initilize,
    TResult Function(String moviequery)? searchmovie,
    required TResult orElse(),
  }) {
    if (initilize != null) {
      return initilize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initilize value) initilize,
    required TResult Function(SearchMovie value) searchmovie,
  }) {
    return initilize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initilize value)? initilize,
    TResult? Function(SearchMovie value)? searchmovie,
  }) {
    return initilize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initilize value)? initilize,
    TResult Function(SearchMovie value)? searchmovie,
    required TResult orElse(),
  }) {
    if (initilize != null) {
      return initilize(this);
    }
    return orElse();
  }
}

abstract class Initilize implements SearchEvent {
  const factory Initilize() = _$Initilize;
}

/// @nodoc
abstract class _$$SearchMovieCopyWith<$Res> {
  factory _$$SearchMovieCopyWith(
          _$SearchMovie value, $Res Function(_$SearchMovie) then) =
      __$$SearchMovieCopyWithImpl<$Res>;
  @useResult
  $Res call({String moviequery});
}

/// @nodoc
class __$$SearchMovieCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchMovie>
    implements _$$SearchMovieCopyWith<$Res> {
  __$$SearchMovieCopyWithImpl(
      _$SearchMovie _value, $Res Function(_$SearchMovie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviequery = null,
  }) {
    return _then(_$SearchMovie(
      moviequery: null == moviequery
          ? _value.moviequery
          : moviequery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchMovie implements SearchMovie {
  const _$SearchMovie({required this.moviequery});

  @override
  final String moviequery;

  @override
  String toString() {
    return 'SearchEvent.searchmovie(moviequery: $moviequery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMovie &&
            (identical(other.moviequery, moviequery) ||
                other.moviequery == moviequery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moviequery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMovieCopyWith<_$SearchMovie> get copyWith =>
      __$$SearchMovieCopyWithImpl<_$SearchMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initilize,
    required TResult Function(String moviequery) searchmovie,
  }) {
    return searchmovie(moviequery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initilize,
    TResult? Function(String moviequery)? searchmovie,
  }) {
    return searchmovie?.call(moviequery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initilize,
    TResult Function(String moviequery)? searchmovie,
    required TResult orElse(),
  }) {
    if (searchmovie != null) {
      return searchmovie(moviequery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initilize value) initilize,
    required TResult Function(SearchMovie value) searchmovie,
  }) {
    return searchmovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initilize value)? initilize,
    TResult? Function(SearchMovie value)? searchmovie,
  }) {
    return searchmovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initilize value)? initilize,
    TResult Function(SearchMovie value)? searchmovie,
    required TResult orElse(),
  }) {
    if (searchmovie != null) {
      return searchmovie(this);
    }
    return orElse();
  }
}

abstract class SearchMovie implements SearchEvent {
  const factory SearchMovie({required final String moviequery}) = _$SearchMovie;

  String get moviequery;
  @JsonKey(ignore: true)
  _$$SearchMovieCopyWith<_$SearchMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  List<Result> get searchresultlist => throw _privateConstructorUsedError;
  List<Downloads> get idleList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<Result> searchresultlist,
      List<Downloads> idleList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchresultlist = null,
    Object? idleList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      searchresultlist: null == searchresultlist
          ? _value.searchresultlist
          : searchresultlist // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      idleList: null == idleList
          ? _value.idleList
          : idleList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Result> searchresultlist,
      List<Downloads> idleList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchresultlist = null,
    Object? idleList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_SearchState(
      searchresultlist: null == searchresultlist
          ? _value._searchresultlist
          : searchresultlist // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      idleList: null == idleList
          ? _value._idleList
          : idleList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required final List<Result> searchresultlist,
      required final List<Downloads> idleList,
      required this.isLoading,
      required this.isError})
      : _searchresultlist = searchresultlist,
        _idleList = idleList;

  final List<Result> _searchresultlist;
  @override
  List<Result> get searchresultlist {
    if (_searchresultlist is EqualUnmodifiableListView)
      return _searchresultlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchresultlist);
  }

  final List<Downloads> _idleList;
  @override
  List<Downloads> get idleList {
    if (_idleList is EqualUnmodifiableListView) return _idleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_idleList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'SearchState(searchresultlist: $searchresultlist, idleList: $idleList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality()
                .equals(other._searchresultlist, _searchresultlist) &&
            const DeepCollectionEquality().equals(other._idleList, _idleList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchresultlist),
      const DeepCollectionEquality().hash(_idleList),
      isLoading,
      isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final List<Result> searchresultlist,
      required final List<Downloads> idleList,
      required final bool isLoading,
      required final bool isError}) = _$_SearchState;

  @override
  List<Result> get searchresultlist;
  @override
  List<Downloads> get idleList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
