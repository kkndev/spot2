import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:spot2/features/user/domain/entity/entities.dart';

import '../repositories/user_repository.dart';
import 'usecase.dart';

class UpdateUserUsecase extends UseCase<UserEntity, UpdateUserParams> {
  final UserRepository userRepository;

  UpdateUserUsecase(this.userRepository);

  @override
  Future<Either<Failure, UserEntity>> call(UpdateUserParams params) async {
    return await userRepository.updateUser(
      name: params.name,
      deviceToken: params.deviceToken,
    );
  }
}

class UpdateUserParams extends Equatable {
  final String deviceToken;
  final String name;

  const UpdateUserParams({
    required this.name,
    required this.deviceToken,
  });

  @override
  List<Object> get props => [name, deviceToken];
}
