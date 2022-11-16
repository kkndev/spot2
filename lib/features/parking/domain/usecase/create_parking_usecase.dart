import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../entity/parking_entity/parking_entity.dart';
import '../repository/parking_repository.dart';
import 'usecase.dart';

class CreateParkingUsecase
    extends UseCase<List<ParkingEntity>, CreateParkingParams> {
  final ParkingRepository freeParkingRepository;

  CreateParkingUsecase(this.freeParkingRepository);

  @override
  Future<Either<Failure, List<ParkingEntity>>> call(
      CreateParkingParams params) async {
    return await freeParkingRepository.create(
      userId: params.userId,
      parkingId: params.parkingId,
    );
  }
}

class CreateParkingParams extends Equatable {
  final int userId;
  final int parkingId;

  const CreateParkingParams({
    required this.userId,
    required this.parkingId,
  });

  @override
  List<Object> get props => [userId, parkingId];
}
