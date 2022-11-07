import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:spot2/features/auth/domain/entities/parking_place_entity.dart';
import 'package:spot2/features/map/domain/entities/parking_entity.dart';

import '../repositories/auth_repository.dart';
import '/core/data/dto/error/failure.dart';
import '/core/domain/usecase/usecase.dart';

class GetParkingPlaces
    extends UseCase<List<ParkingPlaceEntity>, GetParkingPlacesParams> {
  final AuthRepository authRepository;

  GetParkingPlaces(this.authRepository);

  @override
  Future<Either<Failure, List<ParkingPlaceEntity>>> call(
      GetParkingPlacesParams params) async {
    return await authRepository.getParkingPlaces(params.code, params.id);
  }
}

class GetParkingPlacesParams extends Equatable {
  final String code;
  final int id;

  const GetParkingPlacesParams({required this.code, required this.id});

  @override
  List<Object> get props => [code];
}
