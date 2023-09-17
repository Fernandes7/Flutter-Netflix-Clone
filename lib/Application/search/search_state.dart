part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState(
      {required List<Result> searchresultlist,
      required List<Downloads> idleList,
      required bool isLoading,
      required bool isError}) = _SearchState;

  factory SearchState.initial() => const SearchState(
      searchresultlist: [],
      idleList: [],
      isLoading: false,
      isError: false);
}
