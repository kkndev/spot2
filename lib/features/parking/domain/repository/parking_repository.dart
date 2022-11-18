import 'package:dartz/dartz.dart';

import '../entity/failure.dart';
import '../entity/parking_entity/parking_entity.dart';

abstract class ParkingRepository {
  Future<Either<Failure, List<ParkingEntity>>> getItems({
    required int userId,
  });
  Future<Either<Failure, ParkingEntity>> getItem({
    required int id,
  });
  Future<Either<Failure, List<ParkingEntity>>> getItemsByAddress({
    required String searchValue,
  });
}
