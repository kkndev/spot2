import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:spot2/features/user/domain/entity/entities.dart';

import '../repositories/user_repository.dart';
import 'usecase.dart';

class UpdateUserNameUsecase extends UseCase<UserEntity, UpdateUserNameParams> {
  final UserRepository userRepository;

  UpdateUserNameUsecase(this.userRepository);

  @override
  Future<Either<Failure, UserEntity>> call(UpdateUserNameParams params) async {
    return await userRepository.updateUserName(
      name: params.name,
    );
  }
}

class UpdateUserNameParams extends Equatable {
  final String name;

  const UpdateUserNameParams({
    required this.name,
  });

  @override
  List<Object> get props => [name];
}
