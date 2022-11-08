import 'package:dartz/dartz.dart';

import '/features/user/data/datasources/user_remote_data_source.dart';
import '/features/user/domain/entities/user_entity.dart';
import '/features/user/domain/repositories/user_repository.dart';
import '/core/data/dto/error/exception.dart';
import '/core/data/dto/error/failure.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, UserEntity>> getUser(String id) async {
    try {
      final result = await remoteDataSource.getUser(id);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
