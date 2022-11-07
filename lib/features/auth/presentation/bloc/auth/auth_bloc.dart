import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spot2/features/auth/domain/usecases/get_parking_items.dart';
import 'package:spot2/features/auth/domain/usecases/get_parking_places.dart';
import 'package:spot2/features/auth/domain/usecases/send_code_from_email.dart';
import 'package:spot2/features/auth/domain/usecases/send_code_from_phone.dart';

import '../../../domain/usecases/get_code_by_phone.dart';
import '/core/data/dto/request_status/request_status.dart';
import 'package:spot2/features/auth/domain/usecases/get_code_by_email.dart';
import 'auth_state.dart';
import 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final GetCodeByEmail getCodeByEmail;
  final GetCodeByPhone getCodeByPhone;
  final SendCodeFromEmail sendCodeFromEmail;
  final SendCodeFromPhone sendCodeFromPhone;
  final GetParkingItems getParkingItems;
  final GetParkingPlaces getParkingPlaces;

  AuthBloc({
    required this.getCodeByEmail,
    required this.getCodeByPhone,
    required this.sendCodeFromEmail,
    required this.sendCodeFromPhone,
    required this.getParkingItems,
    required this.getParkingPlaces,
  }) : super(AuthState()) {
    on<InitAuth>((event, emit) {});
    on<Update>((event, emit) {
      emit(event.newAuthState);
    });
    on<UpdatePhoneOrEmail>((event, emit) {
      emit(state.copyWith(phoneOrEmail: event.newPhoneOrEmail));
    });
    on<UpdateTokens>((event, emit) {
      emit(state.copyWith(
        userMasterToken: event.userMasterToken,
        userMasterRefreshToken: event.userMasterRefreshToken,
      ));
    });
    on<GetCodeByEmailEvent>((event, emit) async {
      emit(
        state.copyWith(
          requestStatus: const RequestStatus.loading(),
        ),
      );
      var result =
          await getCodeByEmail(GetCodeByEmailParams(email: event.email));
      result.fold(
        (error) => emit(
          state.copyWith(
            requestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            requestStatus: RequestStatus.success(data: result),
            result: result,
          ),
        ),
      );
    });
    on<GetCodeByPhoneEvent>((event, emit) async {
      emit(
        state.copyWith(
          requestStatus: const RequestStatus.loading(),
        ),
      );
      var result =
          await getCodeByPhone(GetCodeByPhoneParams(phone: event.phone));
      result.fold(
        (error) => emit(
          state.copyWith(
            requestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            requestStatus: RequestStatus.success(data: result),
            result: result,
          ),
        ),
      );
    });
    on<SendCodeFromPhoneEvent>((event, emit) async {
      emit(
        state.copyWith(
          requestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await sendCodeFromPhone(SendCodeFromPhoneParams(
        phone: state.phoneOrEmail,
        code: event.code,
      ));
      result.fold(
        (error) => emit(
          state.copyWith(
            requestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            requestStatus: RequestStatus.success(data: 'result'),
            userMasterToken: result.userMasterToken,
            userMasterRefreshToken: result.userMasterRefreshToken,
          ),
        ),
      );
    });
    on<SendCodeFromEmailEvent>((event, emit) async {
      emit(
        state.copyWith(
          requestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await sendCodeFromEmail(SendCodeFromEmailParams(
        email: state.phoneOrEmail,
        code: event.code,
      ));
      result.fold(
        (error) => emit(
          state.copyWith(
            requestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            requestStatus: RequestStatus.success(data: 'result'),
            userMasterToken: result.userMasterToken,
            userMasterRefreshToken: result.userMasterRefreshToken,
            userSpotToken: result.userSpotToken,
          ),
        ),
      );
    });
    on<GetParkingItemsEvent>((event, emit) async {
      emit(
        state.copyWith(
          requestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await getParkingItems(GetParkingItemsParams(
        code: state.userSpotToken,
      ));
      result.fold(
        (error) => emit(
          state.copyWith(
            requestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            requestStatus: RequestStatus.success(data: 'result'),
            parkingEntityList: result,
          ),
        ),
      );
    });
    on<GetParkingPlacesEvent>((event, emit) async {
      emit(
        state.copyWith(
          requestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await getParkingPlaces(GetParkingPlacesParams(
        code: state.userSpotToken, id: event.id
      ));
      result.fold(
        (error) => emit(
          state.copyWith(
            requestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            requestStatus: RequestStatus.success(data: 'result'),
            parkingPlaceEntityList: result,
          ),
        ),
      );
    });
  }
}
