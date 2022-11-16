import 'package:dartz/dartz.dart';

import '../../domain/entity/failure.dart';
import '../../domain/entity/parking_entity/parking_entity.dart';
import '../../domain/repository/parking_repository.dart';
import '../data_source/parking_remote_data_source_interface.dart';
import '../models/exception.dart';

class ParkingRepositoryImpl implements ParkingRepository {
  final ParkingDataSource remoteDataSource;

  ParkingRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, List<ParkingEntity>>> getItems(
      {required int userId}) async {
    try {
      final result = await remoteDataSource.getItems(
        userId: userId,
      );
      return Right(result
          .map((parking) => ParkingEntity(
                id: parking.id,
                parkingUid: parking.parkingUid,
                address: parking.address,
                latitude: double.parse(parking.latitude),
                longitude: double.parse(parking.longitude),
                freePlacesCount: parking.freePlacesCount,
                occupiedPlacesCount: parking.occupiedPlacesCount,
                unknownPlacesCount: parking.unknownPlacesCount,
                favoriteName: parking.favoriteName,
              ))
          .toList());
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, ParkingEntity>> getItem({required int id}) async {
    try {
      final result = await remoteDataSource.getItem(
        id: id,
      );
      return Right(
        ParkingEntity(
          id: result.id,
          parkingUid: result.parkingUid,
          address: result.address,
          latitude: double.parse(result.latitude),
          longitude: double.parse(result.longitude),
          freePlacesCount: result.freePlacesCount,
          occupiedPlacesCount: result.occupiedPlacesCount,
          unknownPlacesCount: result.unknownPlacesCount,
          favoriteName: result.favoriteName,
          name: result.name,
        ),
      );
    } on UserException catch (e) {
      return Left(UserFailure(code: e.code, message: e.message));
    } on ServerException {
      return Left(ServerFailure(code: 500, message: 'Server Error'));
    }
  }

  @override
  Future<Either<Failure, List<ParkingEntity>>> create({
    required int userId,
    required int parkingId,
  }) async {
    try {
      final result = await remoteDataSource.create(
        userId: userId,
        parkingId: parkingId,
      );
      return Right(result
          .map((parking) => ParkingEntity(
                id: parking.id,
                parkingUid: parking.parkingUid,
                address: parking.address,
                latitude: double.parse(parking.latitude),
                longitude: double.parse(parking.longitude),
                freePlacesCount: parking.freePlacesCount,
                occupiedPlacesCount: parking.occupiedPlacesCount,
                unknownPlacesCount: parking.unknownPlacesCount,
                favoriteName: parking.favoriteName,
              ))
          .toList());
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<ParkingEntity>>> update({
    required int id,
  }) async {
    try {
      final result = await remoteDataSource.update(
        id: id,
      );
      return Right(result
          .map((parking) => ParkingEntity(
                id: parking.id,
                parkingUid: parking.parkingUid,
                address: parking.address,
                latitude: double.parse(parking.latitude),
                longitude: double.parse(parking.longitude),
                freePlacesCount: parking.freePlacesCount,
                occupiedPlacesCount: parking.occupiedPlacesCount,
                unknownPlacesCount: parking.unknownPlacesCount,
                favoriteName: parking.favoriteName,
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
