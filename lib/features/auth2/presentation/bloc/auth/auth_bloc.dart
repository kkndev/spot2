import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entity/request_status/request_status.dart';
import '../../../domain/usecase/login_to_service_usecase.dart';
import '../../../domain/usecase/refresh_user_master_token_usecase.dart';
import 'auth_state.dart';
import 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final RefreshUserMasterTokenUsecase refreshUserMasterTokenUsecase;
  final LoginToServiceUsecase loginToServiceUsecase;

  AuthBloc({
    required this.refreshUserMasterTokenUsecase,
    required this.loginToServiceUsecase,
  }) : super(AuthState()) {
    on<InitAuthEvent>((event, emit) {});
    on<RefreshUserMasterTokenEvent>((event, emit) async {
      emit(
        state.copyWith(
          refreshUserMasterTokenRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result =
          await refreshUserMasterTokenUsecase(RefreshUserMasterTokenParams(
        id: event.id,
      ));
      result.fold(
        (error) => emit(
          state.copyWith(
            refreshUserMasterTokenRequestStatus:
                RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            refreshUserMasterTokenRequestStatus:
                RequestStatus.success(data: result),
          ),
        ),
      );
    });
    on<LoginToServiceEvent>((event, emit) async {
      emit(
        state.copyWith(
          loginToServiceRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await loginToServiceUsecase(LoginToServiceParams(
        serviceName: event.serviceName,
      ));
      result.fold(
        (error) => emit(
          state.copyWith(
            loginToServiceRequestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            loginToServiceRequestStatus: RequestStatus.success(data: result),
          ),
        ),
      );
    });
  }
}
