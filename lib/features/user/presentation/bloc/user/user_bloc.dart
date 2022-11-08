import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spot2/features/user/domain/usecases/activate_promo_code_usecase.dart';

import '/features/user/domain/usecases/get_user_usecase.dart';
import '/core/data/dto/request_status/request_status.dart';
import 'user_state.dart';
import 'user_event.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserUsecase getUserUsecase;
  final ActivatePromoCodeUsecase activatePromoCodeUsecase;

  UserBloc({
    required this.getUserUsecase,
    required this.activatePromoCodeUsecase,
  }) : super(UserState()) {
    on<InitUser>((event, emit) {});
    on<GetUserEvent>((event, emit) async {
      emit(
        state.copyWith(
          requestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await getUserUsecase(GetUserParams(id: event.id));
      result.fold(
        (error) => emit(
          state.copyWith(
            requestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            requestStatus: RequestStatus.success(data: result),
            user: result,
          ),
        ),
      );
    });
    on<ActivatePromoCodeEvent>((event, emit) async {
      emit(
        state.copyWith(
          activatePromoCodeRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await activatePromoCodeUsecase(
          ActivatePromoCodeParams(promoCode: event.promoCode));
      result.fold(
        (error) => emit(
          state.copyWith(
            activatePromoCodeRequestStatus: RequestStatus.failure(error: error),
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
    on<ClearPromoCodeEvent>((event, emit) async {
      emit(
        state.copyWith(
          activatePromoCodeResult: '',
        ),
      );
    });
  }
}
