import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../entity/parking_entity/parking_entity.dart';
import '../repository/parking_repository.dart';
import 'usecase.dart';

class GetParkingUsecase extends UseCase<ParkingEntity, GetParkingParams> {
  final ParkingRepository parkingRepository;

  GetParkingUsecase(this.parkingRepository);

  @override
  Future<Either<Failure, ParkingEntity>> call(GetParkingParams params) async {
    return await parkingRepository.getItem(
      id: params.id,
    );
  }
}

class GetParkingParams extends Equatable {
  final int id;

  const GetParkingParams({required this.id});

  @override
  List<Object> get props => [id];
}
