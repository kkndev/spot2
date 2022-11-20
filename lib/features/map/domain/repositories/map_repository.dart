import 'package:dartz/dartz.dart';

import '/core/data/dto/error/failure.dart';

abstract class MapRepository {
  Future<Either<Failure, String>> getCode(String email);
}
