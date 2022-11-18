import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../entity/parking_entity/parking_entity.dart';
import '../repository/parking_repository.dart';
import 'usecase.dart';

class GetParkingByAddressUsecase
    extends UseCase<List<ParkingEntity>, GetParkingByAddressParams> {
  final ParkingRepository parkingRepository;

  GetParkingByAddressUsecase(this.parkingRepository);

  @override
  Future<Either<Failure, List<ParkingEntity>>> call(
      GetParkingByAddressParams params) async {
    return await parkingRepository.getItemsByAddress(
      searchValue: params.searchValue,
    );
  }
}

class GetParkingByAddressParams extends Equatable {
  final String searchValue;

  const GetParkingByAddressParams({required this.searchValue});

  @override
  List<Object> get props => [searchValue];
}
