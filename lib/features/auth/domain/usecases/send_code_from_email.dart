import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:spot2/features/auth/domain/entities/user_tokens.dart';

import '../repositories/auth_repository.dart';
import '/core/data/dto/error/failure.dart';
import '/core/domain/usecase/usecase.dart';

class SendCodeFromEmail extends UseCase<UserTokens, SendCodeFromEmailParams> {
  final AuthRepository authRepository;

  SendCodeFromEmail(this.authRepository);

  @override
  Future<Either<Failure, UserTokens>> call(
      SendCodeFromEmailParams params) async {
    return await authRepository.sendCodeFromEmail(params.email, params.code);
  }
}

class SendCodeFromEmailParams extends Equatable {
  final String email;
  final String code;

  const SendCodeFromEmailParams({
    required this.email,
    required this.code,
  });

  @override
  List<Object> get props => [email, code];
}
