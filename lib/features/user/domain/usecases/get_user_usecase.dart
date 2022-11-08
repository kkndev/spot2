import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '/features/user/domain/entities/entities.dart';
import '/features/user/domain/repositories/user_repository.dart';
import '/core/data/dto/error/failure.dart';
import '/core/domain/usecase/usecase.dart';

class GetUserUsecase extends UseCase<UserEntity, GetUserParams> {
  final UserRepository userRepository;

  GetUserUsecase(this.userRepository);

  @override
  Future<Either<Failure, UserEntity>> call(GetUserParams params) async {
    return await userRepository.getUser(params.id);
  }
}

class GetUserParams extends Equatable {
  final String id;

  const GetUserParams({required this.id});

  @override
  List<Object> get props => [id];
}
