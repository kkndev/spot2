import 'package:dartz/dartz.dart';

import '/features/user/domain/entities/entities.dart';
import '/core/data/dto/error/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUser(String id);
  Future<Either<Failure, String>> activatePromoCode(String promoCode);
}
