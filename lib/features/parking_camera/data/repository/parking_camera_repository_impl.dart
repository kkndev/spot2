import 'package:dartz/dartz.dart';

import '../../domain/entity/failure.dart';
import '../../domain/repository/parking_camera_repository.dart';
import '../data_source/parking_camera_remote_data_source_interface.dart';
import '../models/exception.dart';

class ParkingCameraRepositoryImpl implements ParkingCameraRepository {
  final ParkingCameraDataSource remoteDataSource;

  ParkingCameraRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, String>> getImageUrl({
    required String cameraUid,
    required String parkingUid,
  }) async {
    try {
      final result = await remoteDataSource.getImageUrl(
        cameraUid: cameraUid,
        parkingUid: parkingUid,
      );
      return Right(result);
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }
}
