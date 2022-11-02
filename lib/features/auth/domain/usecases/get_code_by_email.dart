import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../repositories/auth_repository.dart';
import '/core/data/dto/error/failure.dart';
import '/core/domain/usecase/usecase.dart';

class GetCodeByEmail extends UseCase<String, GetCodeByEmailParams> {
  final AuthRepository authRepository;

  GetCodeByEmail(this.authRepository);

  @override
  Future<Either<Failure, String>> call(GetCodeByEmailParams params) async {
    return await authRepository.getCodeByEmail(params.email);
  }
}

class GetCodeByEmailParams extends Equatable {
  final String email;

  const GetCodeByEmailParams({required this.email});

  @override
  List<Object> get props => [email];
}
