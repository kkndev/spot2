import 'package:dartz/dartz.dart';

import '../entity/entities.dart';

abstract class UserRepository {
  Future<Either<Failure, String>> activatePromoCode(
      {required String promoCode});
  Future<Either<Failure, UserInfoEntity>> whoami();
  Future<Either<Failure, UserEntity>> getUser({required int id});
  Future<Either<Failure, UserEntity>> updateUser({
    required String name,
    required String deviceToken,
  });
  Future<Either<Failure, UserEntity>> updateUserName({
    required String name,
  });
  Future<Either<Failure, String>> getMinAppVersion();
}
