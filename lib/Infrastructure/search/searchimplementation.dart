import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Core/faliures/mainfailures.dart';
import 'package:netflix/Domain/Core/apiendpoints.dart';
import 'package:netflix/Domain/Search/models/searchresponce/searchresponce.dart';
import 'package:netflix/Domain/Search/searchservices.dart';

@LazySingleton(as:Searchservices)
class SearchImplementation implements Searchservices {
  @override
  Future<Either<Mainfaliuers, Searchresponce>> searchMovies(
      {required String moviequery}) async {
    try {
      final responce = await Dio(BaseOptions()).get(Apikeys.search,queryParameters: {"query":moviequery});
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final result = Searchresponce.fromJson(responce.data);
        return Right(result);
      } else {
        return const Left(Mainfaliuers.serverFailures());
      }
    } catch (e) {
      print(e.toString());
      return const Left(Mainfaliuers.clientFailures());
    }
  }
}
