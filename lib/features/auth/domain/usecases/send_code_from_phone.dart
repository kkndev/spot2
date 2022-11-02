import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:spot2/features/auth/domain/entities/user_tokens.dart';

import '../repositories/auth_repository.dart';
import '/core/data/dto/error/failure.dart';
import '/core/domain/usecase/usecase.dart';

class SendCodeFromPhone extends UseCase<UserTokens, SendCodeFromPhoneParams> {
  final AuthRepository authRepository;

  SendCodeFromPhone(this.authRepository);

  @override
  Future<Either<Failure, UserTokens>> call(
      SendCodeFromPhoneParams params) async {
    return await authRepository.sendCodeFromPhone(params.phone, params.code);
  }
}

class SendCodeFromPhoneParams extends Equatable {
  final String phone;
  final String code;

  const SendCodeFromPhoneParams({
    required this.phone,
    required this.code,
  });

  @override
  List<Object> get props => [phone, code];
}
