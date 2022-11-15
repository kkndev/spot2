import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/data/dto/error/failure.dart';
import '../../../../core/domain/usecase/usecase.dart';
import '../entity/favorite_parking_entity/favorite_parking_entity.dart';
import '../repository/favorite_parking_repository.dart';

class UpdateFavoriteParkingUsecase
    extends UseCase<List<FavoriteParkingEntity>, UpdateFavoriteParkingParams> {
  final FavoriteParkingRepository favoriteParkingRepository;

  UpdateFavoriteParkingUsecase(this.favoriteParkingRepository);

  @override
  Future<Either<Failure, List<FavoriteParkingEntity>>> call(
      UpdateFavoriteParkingParams params) async {
    return await favoriteParkingRepository.update(
      id: params.id,
      name: params.name,
    );
  }
}

class UpdateFavoriteParkingParams extends Equatable {
  final int id;
  final String name;

  const UpdateFavoriteParkingParams({
    required this.id,
    required this.name,
  });

  @override
  List<Object> get props => [id, name];
}
