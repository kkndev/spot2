import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../entity/parking_entity/parking_entity.dart';
import '../repository/parking_repository.dart';
import 'usecase.dart';

class UpdateParkingUsecase
    extends UseCase<List<ParkingEntity>, UpdateParkingParams> {
  final ParkingRepository freeParkingRepository;

  UpdateParkingUsecase(this.freeParkingRepository);

  @override
  Future<Either<Failure, List<ParkingEntity>>> call(
      UpdateParkingParams params) async {
    return await freeParkingRepository.update(
      id: params.id,
    );
  }
}

class UpdateParkingParams extends Equatable {
  final int id;

  const UpdateParkingParams({
    required this.id,
  });

  @override
  List<Object> get props => [id];
}
