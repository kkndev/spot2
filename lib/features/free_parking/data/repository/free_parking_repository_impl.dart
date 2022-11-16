import 'package:dartz/dartz.dart';

import '../../domain/entity/failure.dart';
import '../../domain/entity/free_parking_entity/free_parking_entity.dart';
import '../../domain/repository/free_parking_repository.dart';
import '../data_source/free_parking_remote_data_source_interface.dart';
import '../models/exception.dart';

class FreeParkingRepositoryImpl implements FreeParkingRepository {
  final FreeParkingDataSource remoteDataSource;

  FreeParkingRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<FreeParkingEntity>>> getItems(
      {required int userId}) async {
    try {
      final result = await remoteDataSource.getItems(
        userId: userId,
      );
      return Right(result
          .map((parking) => FreeParkingEntity(
                id: parking.id,
                parkingId: parking.parkingId,
                userId: parking.userId,
              ))
          .toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<FreeParkingEntity>>> create({
    required int userId,
    required int parkingId,
  }) async {
    try {
      final result = await remoteDataSource.create(
        userId: userId,
        parkingId: parkingId,
      );
      return Right(result
          .map((parking) => FreeParkingEntity(
                id: parking.id,
                parkingId: parking.parkingId,
                userId: parking.userId,
              ))
          .toList());
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<FreeParkingEntity>>> update({
    required int id,
  }) async {
    try {
      final result = await remoteDataSource.update(
        id: id,
      );
      return Right(result
          .map((parking) => FreeParkingEntity(
                id: parking.id,
                parkingId: parking.parkingId,
                userId: parking.userId,
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
