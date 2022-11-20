import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../parking/domain/entity/parking_entity/parking_entity.dart';
import '../repositories/auth_repository.dart';
import '/core/data/dto/error/failure.dart';
import '/core/domain/usecase/usecase.dart';

class GetParkingItems
    extends UseCase<List<ParkingEntity>, GetParkingItemsParams> {
  final AuthRepository authRepository;

  GetParkingItems(this.authRepository);

  @override
  Future<Either<Failure, List<ParkingEntity>>> call(
      GetParkingItemsParams params) async {
    return await authRepository.getParkingItems(params.code);
  }
}

class GetParkingItemsParams extends Equatable {
  final String code;

  const GetParkingItemsParams({required this.code});

  @override
  List<Object> get props => [code];
}
