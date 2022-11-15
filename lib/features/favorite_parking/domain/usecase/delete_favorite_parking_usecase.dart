import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/data/dto/error/failure.dart';
import '../../../../core/domain/usecase/usecase.dart';
import '../repository/favorite_parking_repository.dart';

class DeleteFavoriteParkingUsecase
    extends UseCase<String, DeleteFavoriteParkingParams> {
  final FavoriteParkingRepository favoriteParkingRepository;

  DeleteFavoriteParkingUsecase(this.favoriteParkingRepository);

  @override
  Future<Either<Failure, String>> call(
      DeleteFavoriteParkingParams params) async {
    return await favoriteParkingRepository.delete(id: params.id);
  }
}

class DeleteFavoriteParkingParams extends Equatable {
  final int id;

  const DeleteFavoriteParkingParams({
    required this.id,
  });

  @override
  List<Object> get props => [id];
}
