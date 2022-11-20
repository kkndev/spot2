import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../repositories/map_repository.dart';
import '/core/data/dto/error/failure.dart';
import '/core/domain/usecase/usecase.dart';

class GetCode extends UseCase<String, GetCodeParams> {
  final MapRepository authRepository;

  GetCode(this.authRepository);

  @override
  Future<Either<Failure, String>> call(GetCodeParams params) async {
    return await authRepository.getCode(params.email);
  }
}

class GetCodeParams extends Equatable {
  final String email;

  const GetCodeParams({required this.email});

  @override
  List<Object> get props => [email];
}
