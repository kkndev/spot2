import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../repositories/auth_repository.dart';
import '/core/data/dto/error/failure.dart';
import '/core/domain/usecase/usecase.dart';

class GetCodeByPhone extends UseCase<String, GetCodeByPhoneParams> {
  final AuthRepository authRepository;

  GetCodeByPhone(this.authRepository);

  @override
  Future<Either<Failure, String>> call(GetCodeByPhoneParams params) async {
    return await authRepository.getCodeByEmail(params.phone);
  }
}

class GetCodeByPhoneParams extends Equatable {
  final String phone;

  const GetCodeByPhoneParams({required this.phone});

  @override
  List<Object> get props => [phone];
}
