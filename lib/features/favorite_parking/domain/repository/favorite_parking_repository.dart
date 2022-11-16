import 'package:dartz/dartz.dart';

import '../entity/failure.dart';
import '../entity/favorite_parking_entity/favorite_parking_entity.dart';

abstract class FavoriteParkingRepository {
  Future<Either<Failure, List<FavoriteParkingEntity>>> getItems({
    required String userUid,
  });
  Future<Either<Failure, List<FavoriteParkingEntity>>> create({
    required String userUid,
    required int parkingId,
    required String name,
  });
  Future<Either<Failure, List<FavoriteParkingEntity>>> update({
    required int id,
    required String name,
  });
  Future<Either<Failure, String>> delete({
    required int id,
  });
}
