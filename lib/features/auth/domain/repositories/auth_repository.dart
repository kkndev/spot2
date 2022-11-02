import 'package:dartz/dartz.dart';

import '/features/auth/domain/entities/user_tokens.dart';
import '/core/data/dto/error/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, String>> getCodeByEmail(String email);
  Future<Either<Failure, String>> getCodeByPhone(String phone);
  Future<Either<Failure, UserTokens>> sendCodeFromEmail(
      String email, String code);
  Future<Either<Failure, UserTokens>> sendCodeFromPhone(
      String phone, String code);
}
