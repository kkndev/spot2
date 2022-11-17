import 'package:dartz/dartz.dart';

import '../entity/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> refreshUserMasterToken({
    required int id,
  });
  Future<Either<Failure, String>> loginToService({
    required String serviceName,
  });
}
