import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../entity/parking_entity/parking_entity.dart';
import '../repository/parking_repository.dart';
import 'usecase.dart';

class GetParkingItemUsecase
    extends UseCase<ParkingEntity, GetParkingItemParams> {
  final ParkingRepository parkingRepository;

  GetParkingItemUsecase(this.parkingRepository);

  @override
  Future<Either<Failure, ParkingEntity>> call(
      GetParkingItemParams params) async {
    return await parkingRepository.getItem(
      id: params.id,
    );
  }
}

class GetParkingItemParams extends Equatable {
  final int id;

  const GetParkingItemParams({required this.id});

  @override
  List<Object> get props => [id];
}
