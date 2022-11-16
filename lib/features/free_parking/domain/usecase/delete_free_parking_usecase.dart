import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../repository/free_parking_repository.dart';
import 'usecase.dart';

class DeleteFreeParkingUsecase
    extends UseCase<String, DeleteFreeParkingParams> {
  final FreeParkingRepository freeParkingRepository;

  DeleteFreeParkingUsecase(this.freeParkingRepository);

  @override
  Future<Either<Failure, String>> call(
      DeleteFreeParkingParams params) async {
    return await freeParkingRepository.delete(id: params.id);
  }
}

class DeleteFreeParkingParams extends Equatable {
  final int id;

  const DeleteFreeParkingParams({
    required this.id,
  });

  @override
  List<Object> get props => [id];
}
