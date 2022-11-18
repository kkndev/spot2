import 'package:dartz/dartz.dart';

import '../../domain/entity/entities.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/user_remote_data_source_interface.dart';
import '../models/exception.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, String>> activatePromoCode({
    required String promoCode,
  }) async {
    try {
      final result = await remoteDataSource.activatePromoCode(
        promoCode: promoCode,
      );
      return Right(result);
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> getUser({
    required int id,
  }) async {
    try {
      final result = await remoteDataSource.getUser(
        id: id,
      );
      return Right(UserEntity(
        id: result.id,
        uid: result.uid,
        name: result.name,
        surname: result.surname,
        sex: result.sex,
        dateOfBirth: result.dateOfBirth,
        carBrand: result.carBrand,
        carModel: result.carModel,
        drivingLicenseObtainingDate: result.drivingLicenseObtainingDate,
        deviceToken: result.deviceToken,
      ));
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> updateUser({
    required String name,
    required String deviceToken,
  }) async {
    try {
      final result = await remoteDataSource.updateUser(
        name: name,
        deviceToken: deviceToken,
      );
      return Right(UserEntity(
        id: result.id,
        uid: result.uid,
        name: result.name,
        surname: result.surname,
        sex: result.sex,
        dateOfBirth: result.dateOfBirth,
        carBrand: result.carBrand,
        carModel: result.carModel,
        drivingLicenseObtainingDate: result.drivingLicenseObtainingDate,
        deviceToken: result.deviceToken,
      ));
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, UserInfoEntity>> whoami() async {
    try {
      final result = await remoteDataSource.whoami();
      return Right(UserInfoEntity(
        id: result.id,
        isAutoPay: result.isAutoPay,
        nextPaymentDate: result.nextPaymentDate,
        nextSubscriptionId: result.nextSubscriptionId,
        paymentSource: result.paymentSource,
        roles: result.roles,
        status: result.status,
        subscriptionCost: result.subscriptionCost,
        subscriptionName: result.subscriptionName,
        subscriptionStatus: result.subscriptionStatus,
        wasSubscribed: result.wasSubscribed,
      ));
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, String>> getMinAppVersion() async {
    try {
      final result = await remoteDataSource.getMinAppVersion();
      return Right(result);
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }
}
