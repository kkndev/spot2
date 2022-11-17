import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../repository/auth_repository.dart';
import 'usecase.dart';

class LoginToServiceUsecase extends UseCase<String, LoginToServiceParams> {
  final AuthRepository authRepository;

  LoginToServiceUsecase(this.authRepository);

  @override
  Future<Either<Failure, String>> call(LoginToServiceParams params) async {
    return await authRepository.loginToService(
      serviceName: params.serviceName,
    );
  }
}

class LoginToServiceParams extends Equatable {
  final String serviceName;

  const LoginToServiceParams({
    required this.serviceName,
  });

  @override
  List<Object> get props => [serviceName];
}
