import 'package:dartz/dartz.dart';

import '../entity/failure.dart';
import '../entity/free_parking_entity/free_parking_entity.dart';

abstract class FreeParkingRepository {
  Future<Either<Failure, List<FreeParkingEntity>>> getItems({
    required int userId,
  });
  Future<Either<Failure, List<FreeParkingEntity>>> create({
    required int userId,
    required int parkingId,
  });
  Future<Either<Failure, List<FreeParkingEntity>>> update({
    required int id,
  });
  Future<Either<Failure, String>> delete({
    required int id,
  });
}
