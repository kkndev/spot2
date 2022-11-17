import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../entity/failure.dart';
import '../repository/auth_repository.dart';
import 'usecase.dart';

class RefreshUserMasterTokenUsecase
    extends UseCase<String, RefreshUserMasterTokenParams> {
  final AuthRepository authRepository;

  RefreshUserMasterTokenUsecase(this.authRepository);

  @override
  Future<Either<Failure, String>> call(
      RefreshUserMasterTokenParams params) async {
    return await authRepository.refreshUserMasterToken(
      id: params.id,
    );
  }
}

class RefreshUserMasterTokenParams extends Equatable {
  final int id;

  const RefreshUserMasterTokenParams({
    required this.id,
  });

  @override
  List<Object> get props => [id];
}
