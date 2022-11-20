import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:spot2/features/parking/domain/entity/parking_item_entity/parking_item_entity.dart';

import '../entity/failure.dart';
import '../entity/parking_entity/parking_entity.dart';
import '../repository/parking_repository.dart';
import 'usecase.dart';

class GetParkingItemUsecase
    extends UseCase<ParkingItemEntity, GetParkingItemParams> {
  final ParkingRepository parkingRepository;

  GetParkingItemUsecase(this.parkingRepository);

  @override
  Future<Either<Failure, ParkingItemEntity>> call(
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
