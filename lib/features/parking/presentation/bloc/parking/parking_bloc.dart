import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entity/request_status/request_status.dart';
import '../../../domain/usecase/create_parking_usecase.dart';
import '../../../domain/usecase/delete_parking_usecase.dart';
import '../../../domain/usecase/get_parking_usecase.dart';
import '../../../domain/usecase/update_parking_usecase.dart';
import 'parking_state.dart';
import 'parking_event.dart';

class ParkingBloc extends Bloc<ParkingEvent, ParkingState> {
  final GetParkingUsecase getParkingUsecase;
  final CreateParkingUsecase createParkingUsecase;
  final UpdateParkingUsecase updateParkingUsecase;
  final DeleteParkingUsecase deleteParkingUsecase;

  ParkingBloc({
    required this.getParkingUsecase,
    required this.createParkingUsecase,
    required this.updateParkingUsecase,
    required this.deleteParkingUsecase,
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
    on<DeleteParkingEvent>((event, emit) async {
      emit(
        state.copyWith(
          deleteParkingRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result =
          await deleteParkingUsecase(DeleteParkingParams(id: event.id));
      result.fold(
        (error) => emit(
          state.copyWith(
            deleteParkingRequestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            deleteParkingRequestStatus: RequestStatus.success(data: result),
          ),
        ),
      );
    });
    on<CreateParkingEvent>((event, emit) async {
      emit(
        state.copyWith(
          createParkingRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await createParkingUsecase(CreateParkingParams(
        userId: event.userId,
        parkingId: event.parkingId,
      ));
      result.fold(
        (error) => emit(
          state.copyWith(
            createParkingRequestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            createParkingRequestStatus: RequestStatus.success(data: result),
            freeParkingList: result,
          ),
        ),
      );
    });
  }
}
