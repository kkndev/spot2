import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:spot2/features/user/domain/entity/entities.dart';

import '../repositories/user_repository.dart';
import 'usecase.dart';

class GetUserUsecase extends UseCase<UserEntity, GetUserParams> {
  final UserRepository userRepository;

  GetUserUsecase(this.userRepository);

  @override
  Future<Either<Failure, UserEntity>> call(GetUserParams params) async {
    return await userRepository.getUser(id: params.id);
  }
}

class GetUserParams extends Equatable {
  final int id;

  const GetUserParams({required this.id});

  @override
  List<Object> get props => [id];
}
