import 'package:dartz/dartz.dart';

import '../entity/entities.dart';
import '../repositories/user_repository.dart';
import 'usecase.dart';

class WhoamiUsecase extends UseCase<UserInfoEntity, NoParams> {
  final UserRepository userRepository;

  WhoamiUsecase(this.userRepository);

  @override
  Future<Either<Failure, UserInfoEntity>> call(NoParams params) async {
    return await userRepository.whoami();
  }
}
