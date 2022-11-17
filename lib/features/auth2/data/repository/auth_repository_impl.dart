import 'package:dartz/dartz.dart';

import '../../domain/entity/failure.dart';
import '../../domain/repository/auth_repository.dart';
import '../data_source/auth_remote_data_source_interface.dart';
import '../models/exception.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource remoteDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, String>> refreshUserMasterToken(
      {required int id}) async {
    try {
      final result = await remoteDataSource.refreshUserMasterToken(
        id: id,
      );
      return Right(result);
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, String>> loginToService(
      {required String serviceName}) async {
    try {
      final result = await remoteDataSource.loginToService(
        serviceName: serviceName,
      );
      return Right(result);
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }
}
