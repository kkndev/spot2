import 'package:dartz/dartz.dart';

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
  Future<Either<Failure, String>> getCode(String email) async {
    try {
      final remotePerson = await remoteDataSource.getCodeByEmail(email);
      return Right(remotePerson);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
