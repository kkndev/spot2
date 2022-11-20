import 'package:dartz/dartz.dart';
import 'package:spot2/features/auth/domain/entities/parking_place_entity.dart';
import 'package:spot2/features/auth/domain/entities/user_tokens.dart';

import '../../../parking/domain/entity/parking_entity/parking_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';
import '/core/data/dto/error/exception.dart';
import '/core/data/dto/error/failure.dart';
import '/core/platform/network_info.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, String>> getCodeByEmail(String email) async {
    try {
      final result = await remoteDataSource.getCodeByEmail(email);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, String>> getCodeByPhone(String phone) async {
    try {
      final result = await remoteDataSource.getCodeByPhone(phone);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, UserTokens>> sendCodeFromEmail(
      String email, String code) async {
    try {
      final result = await remoteDataSource.sendCodeFromEmail(email, code);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, UserTokens>> sendCodeFromPhone(
      String phone, String code) async {
    try {
      final result = await remoteDataSource.sendCodeFromPhone(phone, code);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<ParkingEntity>>> getParkingItems(
      String code) async {
    try {
      final result = await remoteDataSource.getParkingItems(code);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<ParkingPlaceEntity>>> getParkingPlaces(
      String code, int id) async {
    try {
      final result = await remoteDataSource.getParkingPlaces(code, id);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
