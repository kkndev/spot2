import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../entity/favorite_parking_entity/favorite_parking_entity.dart';
import '../repository/favorite_parking_repository.dart';
import 'usecase.dart';

class CreateFavoriteParkingUsecase
    extends UseCase<List<FavoriteParkingEntity>, CreateFavoriteParkingParams> {
  final FavoriteParkingRepository favoriteParkingRepository;

  CreateFavoriteParkingUsecase(this.favoriteParkingRepository);

  @override
  Future<Either<Failure, List<FavoriteParkingEntity>>> call(
      CreateFavoriteParkingParams params) async {
    return await favoriteParkingRepository.create(
      userUid: params.userUid,
      parkingId: params.parkingId,
      name: params.name,
    );
  }
}

class CreateFavoriteParkingParams extends Equatable {
  final String userUid;
  final int parkingId;
  final String name;

  const CreateFavoriteParkingParams({
    required this.userUid,
    required this.parkingId,
    required this.name,
  });

  @override
  List<Object> get props => [userUid, parkingId, name];
}
