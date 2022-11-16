import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../entity/free_parking_entity/free_parking_entity.dart';
import '../repository/free_parking_repository.dart';
import 'usecase.dart';

class UpdateFreeParkingUsecase
    extends UseCase<List<FreeParkingEntity>, UpdateFreeParkingParams> {
  final FreeParkingRepository freeParkingRepository;

  UpdateFreeParkingUsecase(this.freeParkingRepository);

  @override
  Future<Either<Failure, List<FreeParkingEntity>>> call(
      UpdateFreeParkingParams params) async {
    return await freeParkingRepository.update(
      id: params.id,
    );
  }
}

class UpdateFreeParkingParams extends Equatable {
  final int id;

  const UpdateFreeParkingParams({
    required this.id,
  });

  @override
  List<Object> get props => [id];
}
