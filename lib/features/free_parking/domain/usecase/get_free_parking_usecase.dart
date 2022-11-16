import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../entity/free_parking_entity/free_parking_entity.dart';
import '../repository/free_parking_repository.dart';
import 'usecase.dart';

class GetFreeParkingUsecase
    extends UseCase<List<FreeParkingEntity>, GetFreeParkingParams> {
  final FreeParkingRepository freeParkingRepository;

  GetFreeParkingUsecase(this.freeParkingRepository);

  @override
  Future<Either<Failure, List<FreeParkingEntity>>> call(
      GetFreeParkingParams params) async {
    return await freeParkingRepository.getItems(
      userId: params.userId,
    );
  }
}

class GetFreeParkingParams extends Equatable {
  final int userId;

  const GetFreeParkingParams({required this.userId});

  @override
  List<Object> get props => [userId];
}
