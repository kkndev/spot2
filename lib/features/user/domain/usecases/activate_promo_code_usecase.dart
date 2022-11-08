import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '/features/user/domain/repositories/user_repository.dart';
import '/core/data/dto/error/failure.dart';
import '/core/domain/usecase/usecase.dart';

class ActivatePromoCodeUsecase
    extends UseCase<String, ActivatePromoCodeParams> {
  final UserRepository userRepository;

  ActivatePromoCodeUsecase(this.userRepository);

  @override
  Future<Either<Failure, String>> call(ActivatePromoCodeParams params) async {
    return await userRepository.activatePromoCode(params.promoCode);
  }
}

class ActivatePromoCodeParams extends Equatable {
  final String promoCode;

  const ActivatePromoCodeParams({required this.promoCode});

  @override
  List<Object> get props => [promoCode];
}
