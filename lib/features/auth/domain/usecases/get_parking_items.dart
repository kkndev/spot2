import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../repositories/auth_repository.dart';
import '/core/data/dto/error/failure.dart';
import '/core/domain/usecase/usecase.dart';

class GetParkingItems extends UseCase<String, GetParkingItemsParams> {
  final AuthRepository authRepository;

  GetParkingItems(this.authRepository);

  @override
  Future<Either<Failure, String>> call(GetParkingItemsParams params) async {
    return await authRepository.getCodeByEmail(params.email);
  }
}

class GetParkingItemsParams extends Equatable {
  final String email;

  const GetParkingItemsParams({required this.email});

  @override
  List<Object> get props => [email];
}
