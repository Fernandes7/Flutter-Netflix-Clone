import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Core/faliures/mainfailures.dart';
import 'package:netflix/Domain/Downlods/models/downloads.dart';
import 'package:netflix/Domain/Downlods/models/i_downloadsrepo.dart';
import 'package:netflix/Domain/Search/models/searchresponce/searchresponce.dart';
import 'package:netflix/Domain/Search/searchservices.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo downloadsservice;
  final Searchservices searchservices;
  SearchBloc(this.downloadsservice, this.searchservices)
      : super(SearchState.initial()) {
    on<Initilize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(SearchState(
            searchresultlist: [],
            idleList: state.idleList,
            isLoading: false,
            isError: false));
      } else {
        emit(const SearchState(
            searchresultlist: [],
            idleList: [],
            isLoading: true,
            isError: false));
      }
      final result = await downloadsservice.getDownloadsimage();
      final states = result.fold((Mainfaliuers f) {
        return const SearchState(
            searchresultlist: [],
            idleList: [],
            isLoading: false,
            isError: true);
      }, (List<Downloads> ls) {
        return SearchState(
            searchresultlist: [],
            idleList: ls,
            isLoading: false,
            isError: false);
      });
      emit(states);
    });

    on<SearchMovie>((event, emit) async {
      emit(const SearchState(
          searchresultlist: [], idleList: [], isLoading: true, isError: false));
      final result =
          await searchservices.searchMovies(moviequery: event.moviequery);
      final states = result.fold((Mainfaliuers f) {
        return const SearchState(
            searchresultlist: [],
            idleList: [],
            isLoading: false,
            isError: true);
      }, (Searchresponce r) {
        return SearchState(
            searchresultlist: r.results,
            idleList: [],
            isLoading: false,
            isError: false);
      });
      emit(states);
    });
  }
}
