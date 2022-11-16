import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../entity/free_parking_entity/free_parking_entity.dart';
import '../repository/free_parking_repository.dart';
import 'usecase.dart';

class CreateFreeParkingUsecase
    extends UseCase<List<FreeParkingEntity>, CreateFreeParkingParams> {
  final FreeParkingRepository freeParkingRepository;

  CreateFreeParkingUsecase(this.freeParkingRepository);

  @override
  Future<Either<Failure, List<FreeParkingEntity>>> call(
      CreateFreeParkingParams params) async {
    return await freeParkingRepository.create(
      userId: params.userId,
      parkingId: params.parkingId,
    );
  }
}

class CreateFreeParkingParams extends Equatable {
  final int userId;
  final int parkingId;

  const CreateFreeParkingParams({
    required this.userId,
    required this.parkingId,
  });

  @override
  List<Object> get props => [userId, parkingId];
}
