import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/data/dto/error/failure.dart';
import '../../../../core/domain/usecase/usecase.dart';
import '../entity/favorite_parking_entity/favorite_parking_entity.dart';
import '../repository/favorite_parking_repository.dart';

class GetFavoriteParkingUsecase
    extends UseCase<List<FavoriteParkingEntity>, GetFavoriteParkingParams> {
  final FavoriteParkingRepository favoriteParkingRepository;

  GetFavoriteParkingUsecase(this.favoriteParkingRepository);

  @override
  Future<Either<Failure, List<FavoriteParkingEntity>>> call(
      GetFavoriteParkingParams params) async {
    return await favoriteParkingRepository.getItems(
      userUid: params.userUid,
    );
  }
}

class GetFavoriteParkingParams extends Equatable {
  final String userUid;

  const GetFavoriteParkingParams({required this.userUid});

  @override
  List<Object> get props => [userUid];
}
