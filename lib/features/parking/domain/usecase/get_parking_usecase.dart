import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../entity/parking_entity/parking_entity.dart';
import '../repository/parking_repository.dart';
import 'usecase.dart';

class GetParkingUsecase extends UseCase<List<ParkingEntity>, NoParams> {
  final ParkingRepository parkingRepository;

  GetParkingUsecase(this.parkingRepository);

  @override
  Future<Either<Failure, List<ParkingEntity>>> call(NoParams params) async {
    return await parkingRepository.getItems();
  }
}
