import 'package:json_annotation/json_annotation.dart';
part 'searchresponce.g.dart';

@JsonSerializable()
class Searchresponce {
  @JsonKey(name:"results")
  List<Result> results;

  Searchresponce({
    this.results=const[],
  });

  factory Searchresponce.fromJson(Map<String, dynamic> json) {
    return _$SearchresponceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchresponceToJson(this);
}
@JsonSerializable()
class Result {
  @JsonKey(name:"id")
  int? id;  
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  Result({
    this.originalTitle,
    this.posterPath,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}