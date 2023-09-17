// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsImage value) getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsImage value)? getDownloadsImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res, DownloadsEvent>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res, $Val extends DownloadsEvent>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetDownloadsImageCopyWith<$Res> {
  factory _$$_GetDownloadsImageCopyWith(_$_GetDownloadsImage value,
          $Res Function(_$_GetDownloadsImage) then) =
      __$$_GetDownloadsImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDownloadsImageCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res, _$_GetDownloadsImage>
    implements _$$_GetDownloadsImageCopyWith<$Res> {
  __$$_GetDownloadsImageCopyWithImpl(
      _$_GetDownloadsImage _value, $Res Function(_$_GetDownloadsImage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetDownloadsImage implements _GetDownloadsImage {
  const _$_GetDownloadsImage();

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadsImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetDownloadsImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImage,
  }) {
    return getDownloadsImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImage,
  }) {
    return getDownloadsImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImage,
    required TResult orElse(),
  }) {
    if (getDownloadsImage != null) {
      return getDownloadsImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadsImage value) getDownloadsImage,
  }) {
    return getDownloadsImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadsImage value)? getDownloadsImage,
  }) {
    return getDownloadsImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadsImage value)? getDownloadsImage,
    required TResult orElse(),
  }) {
    if (getDownloadsImage != null) {
      return getDownloadsImage(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadsImage implements DownloadsEvent {
  const factory _GetDownloadsImage() = _$_GetDownloadsImage;
}

/// @nodoc
mixin _$Downloadstates {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Downloads> get downloads => throw _privateConstructorUsedError;
  Option<Either<Mainfaliuers, List<Downloads>>> get downloadsoptions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadstatesCopyWith<Downloadstates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadstatesCopyWith<$Res> {
  factory $DownloadstatesCopyWith(
          Downloadstates value, $Res Function(Downloadstates) then) =
      _$DownloadstatesCopyWithImpl<$Res, Downloadstates>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Downloads> downloads,
      Option<Either<Mainfaliuers, List<Downloads>>> downloadsoptions});
}

/// @nodoc
class _$DownloadstatesCopyWithImpl<$Res, $Val extends Downloadstates>
    implements $DownloadstatesCopyWith<$Res> {
  _$DownloadstatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloads = null,
    Object? downloadsoptions = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downloadsoptions: null == downloadsoptions
          ? _value.downloadsoptions
          : downloadsoptions // ignore: cast_nullable_to_non_nullable
              as Option<Either<Mainfaliuers, List<Downloads>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownloadstatesCopyWith<$Res>
    implements $DownloadstatesCopyWith<$Res> {
  factory _$$_DownloadstatesCopyWith(
          _$_Downloadstates value, $Res Function(_$_Downloadstates) then) =
      __$$_DownloadstatesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Downloads> downloads,
      Option<Either<Mainfaliuers, List<Downloads>>> downloadsoptions});
}

/// @nodoc
class __$$_DownloadstatesCopyWithImpl<$Res>
    extends _$DownloadstatesCopyWithImpl<$Res, _$_Downloadstates>
    implements _$$_DownloadstatesCopyWith<$Res> {
  __$$_DownloadstatesCopyWithImpl(
      _$_Downloadstates _value, $Res Function(_$_Downloadstates) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloads = null,
    Object? downloadsoptions = null,
  }) {
    return _then(_$_Downloadstates(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: null == downloads
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downloadsoptions: null == downloadsoptions
          ? _value.downloadsoptions
          : downloadsoptions // ignore: cast_nullable_to_non_nullable
              as Option<Either<Mainfaliuers, List<Downloads>>>,
    ));
  }
}

/// @nodoc

class _$_Downloadstates implements _Downloadstates {
  const _$_Downloadstates(
      {required this.isLoading,
      required final List<Downloads> downloads,
      required this.downloadsoptions})
      : _downloads = downloads;

  @override
  final bool isLoading;
  final List<Downloads> _downloads;
  @override
  List<Downloads> get downloads {
    if (_downloads is EqualUnmodifiableListView) return _downloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloads);
  }

  @override
  final Option<Either<Mainfaliuers, List<Downloads>>> downloadsoptions;

  @override
  String toString() {
    return 'Downloadstates(isLoading: $isLoading, downloads: $downloads, downloadsoptions: $downloadsoptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Downloadstates &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads) &&
            (identical(other.downloadsoptions, downloadsoptions) ||
                other.downloadsoptions == downloadsoptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_downloads), downloadsoptions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadstatesCopyWith<_$_Downloadstates> get copyWith =>
      __$$_DownloadstatesCopyWithImpl<_$_Downloadstates>(this, _$identity);
}

abstract class _Downloadstates implements Downloadstates {
  const factory _Downloadstates(
      {required final bool isLoading,
      required final List<Downloads> downloads,
      required final Option<Either<Mainfaliuers, List<Downloads>>>
          downloadsoptions}) = _$_Downloadstates;

  @override
  bool get isLoading;
  @override
  List<Downloads> get downloads;
  @override
  Option<Either<Mainfaliuers, List<Downloads>>> get downloadsoptions;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadstatesCopyWith<_$_Downloadstates> get copyWith =>
      throw _privateConstructorUsedError;
}
