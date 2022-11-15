import 'package:dartz/dartz.dart';

import '../../../../core/data/dto/error/exception.dart';
import '../../../../core/data/dto/error/failure.dart';
import '../../domain/entity/favorite_parking_entity/favorite_parking_entity.dart';
import '../../domain/repository/favorite_parking_repository.dart';
import '../data_source/favorite_parking_remote_data_source_interface.dart';

class FavoriteParkingRepositoryImpl implements FavoriteParkingRepository {
  final FavoriteParkingDataSource remoteDataSource;

  FavoriteParkingRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<FavoriteParkingEntity>>> getItems(
      {required String userUid}) async {
    try {
      final result = await remoteDataSource.getItems(
        userUid: userUid,
      );
      return Right(result
          .map((parking) => FavoriteParkingEntity(
                id: parking.id,
                parkingId: parking.parkingId,
                userUid: parking.userUid,
                isFree: parking.isFree,
              ))
          .toList());
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<FavoriteParkingEntity>>> create({
    required String userUid,
    required int parkingId,
    required String name,
  }) async {
    try {
      final result = await remoteDataSource.create(
        userUid: userUid,
        parkingId: parkingId,
        name: name,
      );
      return Right(result
          .map((parking) => FavoriteParkingEntity(
                id: parking.id,
                parkingId: parking.parkingId,
                userUid: parking.userUid,
                isFree: parking.isFree,
              ))
          .toList());
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<FavoriteParkingEntity>>> update({
    required int id,
    required String name,
  }) async {
    try {
      final result = await remoteDataSource.update(
        name: name,
        id: id,
      );
      return Right(result
          .map((parking) => FavoriteParkingEntity(
                id: parking.id,
                parkingId: parking.parkingId,
                userUid: parking.userUid,
                isFree: parking.isFree,
              ))
          .toList());
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, String>> delete({
    required int id,
  }) async {
    try {
      final result = await remoteDataSource.delete(
        id: id,
      );
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
