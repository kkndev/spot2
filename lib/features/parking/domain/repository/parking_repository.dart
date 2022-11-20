import 'package:dartz/dartz.dart';
import 'package:spot2/features/parking/domain/entity/parking_item_entity/parking_item_entity.dart';

import '../entity/failure.dart';
import '../entity/parking_entity/parking_entity.dart';

abstract class ParkingRepository {
  Future<Either<Failure, List<ParkingEntity>>> getItems();
  Future<Either<Failure, ParkingItemEntity>> getItem({
    required int id,
  });
  Future<Either<Failure, List<ParkingEntity>>> getItemsByAddress({
    required String searchValue,
  });
}
