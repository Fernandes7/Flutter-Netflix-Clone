import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import "package:freezed_annotation/freezed_annotation.dart";
import 'package:injectable/injectable.dart';
import 'package:netflix/Core/faliures/mainfailures.dart';
import 'package:netflix/Domain/Downlods/models/downloads.dart';
import 'package:netflix/Domain/Downlods/models/i_downloadsrepo.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, Downloadstates> {
  final IDownloadsRepo downloasrepo;
  DownloadsBloc(this.downloasrepo) : super(Downloadstates.inital()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(state.copyWith(isLoading: true, downloadsoptions: none()));
      final Either<Mainfaliuers, List<Downloads>> downloadoption =
          await downloasrepo.getDownloadsimage();
      final states = downloadoption.fold(
          (failure) => state.copyWith(
              isLoading: false, downloadsoptions: Some(Left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadsoptions: Some(Right(success))));
      emit(states);
    });
  }
}
