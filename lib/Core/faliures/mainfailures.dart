import "package:freezed_annotation/freezed_annotation.dart";
part 'mainfailures.freezed.dart';

@freezed
class Mainfaliuers with _$Mainfaliuers {
  const factory Mainfaliuers.clientFailures() = _ClientFailures;
  const factory Mainfaliuers.serverFailures() = _ServerFailures;
}
