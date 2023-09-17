import 'package:netflix/Core/faliures/mainfailures.dart';
import 'package:netflix/Domain/Downlods/models/downloads.dart';
import "package:dartz/dartz.dart";

abstract class IDownloadsRepo {
  Future<Either<Mainfaliuers, List<Downloads>>> getDownloadsimage();
}
