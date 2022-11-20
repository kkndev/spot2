import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entity/request_status/request_status.dart';
import '../../../domain/usecase/get_parking_by_address_usecase.dart';
import '../../../domain/usecase/get_parking_item_usecase.dart';
import '../../../domain/usecase/get_parking_usecase.dart';
import '../../../domain/usecase/usecase.dart';
import 'parking_state.dart';
import 'parking_event.dart';

class ParkingBloc extends Bloc<ParkingEvent, ParkingState> {
  final GetParkingUsecase getParkingUsecase;
  final GetParkingItemUsecase getParkingItemUsecase;
  final GetParkingByAddressUsecase getParkingByAddressUsecase;

  ParkingBloc({
    required this.getParkingUsecase,
    required this.getParkingItemUsecase,
    required this.getParkingByAddressUsecase,
  }) : super(ParkingState()) {
    on<InitParkingEvent>((event, emit) {});
    on<GetParkingEvent>((event, emit) async {
      emit(
        state.copyWith(
          getParkingRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await getParkingUsecase(NoParams());
      result.fold(
        (error) => emit(
          state.copyWith(
            getParkingRequestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            getParkingRequestStatus: RequestStatus.success(data: result),
            parkingList: result,
          ),
        ),
      );
    });
    on<GetParkingItemEvent>((event, emit) async {
      emit(
        state.copyWith(
          getParkingItemRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await getParkingItemUsecase(
          GetParkingItemParams(id: event.parkingId));
      result.fold(
        (error) => emit(
          state.copyWith(
            getParkingItemRequestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            getParkingItemRequestStatus: RequestStatus.success(data: result),
            parkingItem: result,
          ),
        ),
      );
    });
    on<GetParkingByAddressEvent>((event, emit) async {
      emit(
        state.copyWith(
          getParkingByAddressRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await getParkingByAddressUsecase(GetParkingByAddressParams(
        searchValue: event.searchValue,
      ));
      result.fold(
        (error) => emit(
          state.copyWith(
            getParkingByAddressRequestStatus:
                RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            getParkingByAddressRequestStatus:
                RequestStatus.success(data: result),
            searchedParkingList: result,
          ),
        ),
      );
    });
  }
}
