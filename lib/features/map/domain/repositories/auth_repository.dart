import 'package:dartz/dartz.dart';

import '/core/data/dto/error/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> getCode(String email);
}
