import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Core/faliures/mainfailures.dart';
import 'package:netflix/Domain/Core/apiendpoints.dart';
import 'package:netflix/Domain/Downlods/models/downloads.dart';
import 'package:netflix/Domain/Downlods/models/i_downloadsrepo.dart';

@LazySingleton(as: IDownloadsRepo)
class Downloadsrepository implements IDownloadsRepo {
  @override
  Future<Either<Mainfaliuers, List<Downloads>>> getDownloadsimage() async {
    try {
      final responce = await Dio(BaseOptions()).get(Apikeys.downlods);
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        final downloadslist = (responce.data["results"] as List)
            .map((e) => Downloads.fromJson(e))
            .toList();
        print(downloadslist);
        return Right(downloadslist);
      } else {
        return const Left(Mainfaliuers.serverFailures());
      }
    } catch (e) {
      return const Left(Mainfaliuers.clientFailures());
    }
  }
}
