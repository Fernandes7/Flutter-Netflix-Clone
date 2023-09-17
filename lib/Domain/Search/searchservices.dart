import 'package:dartz/dartz.dart';
import 'package:netflix/Core/faliures/mainfailures.dart';
import 'package:netflix/Domain/Search/models/searchresponce/searchresponce.dart';

abstract class Searchservices {
  Future<Either<Mainfaliuers, Searchresponce>> searchMovies(
      {required String moviequery});
}
