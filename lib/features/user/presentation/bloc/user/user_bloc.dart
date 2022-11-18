import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spot2/features/user/domain/usecases/get_min_app_version_usecase.dart';
import 'package:spot2/features/user/domain/usecases/get_user_usecase.dart';
import 'package:spot2/features/user/domain/usecases/update_user_usecase.dart';
import 'package:spot2/features/user/domain/usecases/usecase.dart';
import 'package:spot2/features/user/domain/usecases/whoami_usecase.dart';

import '../../../domain/usecases/activate_promo_code_usecase.dart';
import '../../../domain/entity/entities.dart';
import 'user.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final ActivatePromoCodeUsecase activatePromoCodeUsecase;
  final GetUserUsecase getUserUsecase;
  final UpdateUserUsecase updateUserUsecase;
  final WhoamiUsecase whoamiUsecase;
  final GetMinAppVersionUsecase getMinAppVersionUsecase;

  UserBloc({
    required this.activatePromoCodeUsecase,
    required this.getUserUsecase,
    required this.updateUserUsecase,
    required this.whoamiUsecase,
    required this.getMinAppVersionUsecase,
  }) : super(UserState()) {
    on<InitUser>((event, emit) {});
    on<ActivatePromoCodeEvent>((event, emit) async {
      emit(
        state.copyWith(
          activatePromoCodeRequestStatus: const RequestStatus.loading(),
          activatePromoCodeResult: '',
        ),
      );
      var result = await activatePromoCodeUsecase(
          ActivatePromoCodeParams(promoCode: event.promoCode));
      result.fold(
        (error) => emit(
          state.copyWith(
            activatePromoCodeRequestStatus: RequestStatus.failure(error: error),
            activatePromoCodeResult: error.message,
          ),
        ),
        (result) => emit(
          state.copyWith(
            activatePromoCodeRequestStatus: RequestStatus.success(data: result),
            activatePromoCodeResult: result,
          ),
        ),
      );
    });
    on<GetUserEvent>((event, emit) async {
      emit(
        state.copyWith(
          getUserRequestStatus: const RequestStatus.loading(),
          getUserResult: '',
        ),
      );
      var result = await getUserUsecase(GetUserParams(id: event.id));
      result.fold(
        (error) => emit(
          state.copyWith(
            getUserRequestStatus: RequestStatus.failure(error: error),
            getUserResult: error.message,
          ),
        ),
        (result) => emit(
          state.copyWith(
            getUserRequestStatus: RequestStatus.success(data: result),
            user: result,
          ),
        ),
      );
    });
    on<UpdateUserEvent>((event, emit) async {
      emit(
        state.copyWith(
          updateUserRequestStatus: const RequestStatus.loading(),
          updateUserResult: '',
        ),
      );
      var result = await updateUserUsecase(
        UpdateUserParams(name: event.name, deviceToken: 'asf'),
      );
      result.fold(
        (error) => emit(
          state.copyWith(
            updateUserRequestStatus: RequestStatus.failure(error: error),
            updateUserResult: error.message,
          ),
        ),
        (result) => emit(
          state.copyWith(
            updateUserRequestStatus: RequestStatus.success(data: result),
            user: result,
          ),
        ),
      );
    });
    on<WhoamiEvent>((event, emit) async {
      emit(
        state.copyWith(
          whoamiRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await whoamiUsecase(NoParams());
      result.fold(
        (error) => emit(
          state.copyWith(
            whoamiRequestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            whoamiRequestStatus: RequestStatus.success(data: result),
            userInfo: result,
          ),
        ),
      );
    });
    on<GetMinAppVersionEvent>((event, emit) async {
      emit(
        state.copyWith(
          getMinAppVersionRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await getMinAppVersionUsecase(NoParams());
      result.fold(
        (error) => emit(
          state.copyWith(
            getMinAppVersionRequestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            getMinAppVersionRequestStatus: RequestStatus.success(data: result),
            minAppVersion: result,
          ),
        ),
      );
    });
    on<ClearPromoCodeEvent>((event, emit) async {
      emit(
        state.copyWith(
          activatePromoCodeResult: '',
        ),
      );
    });
  }
}
