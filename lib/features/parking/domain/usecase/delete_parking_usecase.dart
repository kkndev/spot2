import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../repository/parking_repository.dart';
import 'usecase.dart';

class DeleteParkingUsecase extends UseCase<String, DeleteParkingParams> {
  final ParkingRepository freeParkingRepository;

  DeleteParkingUsecase(this.freeParkingRepository);

  @override
  Future<Either<Failure, String>> call(DeleteParkingParams params) async {
    return await freeParkingRepository.delete(id: params.id);
  }
}

class DeleteParkingParams extends Equatable {
  final int id;

  const DeleteParkingParams({
    required this.id,
  });

  @override
  List<Object> get props => [id];
}
