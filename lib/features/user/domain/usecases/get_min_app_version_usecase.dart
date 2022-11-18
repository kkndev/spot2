import 'package:dartz/dartz.dart';

import '../entity/failure.dart';
import '../repositories/user_repository.dart';
import 'usecase.dart';

class GetMinAppVersionUsecase extends UseCase<String, NoParams> {
  final UserRepository userRepository;

  GetMinAppVersionUsecase(this.userRepository);

  @override
  Future<Either<Failure, String>> call(NoParams params) async {
    return await userRepository.getMinAppVersion();
  }
}
