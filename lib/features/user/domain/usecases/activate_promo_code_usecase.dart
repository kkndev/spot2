import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../repositories/user_repository.dart';
import 'usecase.dart';

class ActivatePromoCodeUsecase
    extends UseCase<String, ActivatePromoCodeParams> {
  final UserRepository userRepository;

  ActivatePromoCodeUsecase(this.userRepository);

  @override
  Future<Either<Failure, String>> call(ActivatePromoCodeParams params) async {
    return await userRepository.activatePromoCode(promoCode: params.promoCode);
  }
}

class ActivatePromoCodeParams extends Equatable {
  final String promoCode;

  const ActivatePromoCodeParams({required this.promoCode});

  @override
  List<Object> get props => [promoCode];
}
