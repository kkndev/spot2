import 'package:dartz/dartz.dart';

import '../../domain/repositories/map_repository.dart';
import '../datasources/map_remote_data_source.dart';
import '/core/data/dto/error/exception.dart';
import '/core/data/dto/error/failure.dart';
import '/core/platform/network_info.dart';

class MapRepositoryImpl implements MapRepository {
  final MapRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  MapRepositoryImpl({
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
