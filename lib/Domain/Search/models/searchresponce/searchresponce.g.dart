// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchresponce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Searchresponce _$SearchresponceFromJson(Map<String, dynamic> json) =>
    Searchresponce(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchresponceToJson(Searchresponce instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
