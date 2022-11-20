import 'package:dartz/dartz.dart';
import 'package:spot2/features/auth/domain/entities/parking_place_entity.dart';

import '../../../parking/domain/entity/parking_entity/parking_entity.dart';
import '/features/auth/domain/entities/user_tokens.dart';
import '/core/data/dto/error/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> getCodeByEmail(String email);
  Future<Either<Failure, String>> getCodeByPhone(String phone);
  Future<Either<Failure, UserTokens>> sendCodeFromEmail(
      String email, String code);
  Future<Either<Failure, UserTokens>> sendCodeFromPhone(
      String phone, String code);
  Future<Either<Failure, List<ParkingEntity>>> getParkingItems(String code);
  Future<Either<Failure, List<ParkingPlaceEntity>>> getParkingPlaces(
      String code, int id);
}
