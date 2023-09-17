part of 'downloads_bloc.dart';

@freezed
class Downloadstates with _$Downloadstates {
  const factory Downloadstates(
      {required bool isLoading,
      required List<Downloads> downloads,
      required Option<Either<Mainfaliuers, List<Downloads>>>
          downloadsoptions}) = _Downloadstates;

  factory Downloadstates.inital() {
    return const Downloadstates(
        isLoading: true, downloadsoptions: None(), downloads: []);
  }
}
