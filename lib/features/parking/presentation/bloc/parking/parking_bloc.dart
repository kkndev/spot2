import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spot2/features/parking/domain/usecase/get_parking_by_address_usecase.dart';

import '../../../domain/entity/request_status/request_status.dart';
import '../../../domain/usecase/get_parking_usecase.dart';
import 'parking_state.dart';
import 'parking_event.dart';

class ParkingBloc extends Bloc<ParkingEvent, ParkingState> {
  final GetParkingUsecase getParkingUsecase;
  final GetParkingByAddressUsecase getParkingByAddressUsecase;

  ParkingBloc({
    required this.getParkingUsecase,
    required this.getParkingByAddressUsecase,
  }) : super(ParkingState()) {
    on<InitParkingEvent>((event, emit) {});
    on<GetParkingEvent>((event, emit) async {
      emit(
        state.copyWith(
          getParkingRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await getParkingUsecase(GetParkingParams(id: event.id));
      result.fold(
        (error) => emit(
          state.copyWith(
            getParkingRequestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            getParkingRequestStatus: RequestStatus.success(data: result),
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
