import 'package:dartz/dartz.dart';

import '../entity/failure.dart';

abstract class ParkingCameraRepository {
  Future<Either<Failure, String>> getImageUrl({
    required String cameraUid,
    required String parkingUid,
  });
}
