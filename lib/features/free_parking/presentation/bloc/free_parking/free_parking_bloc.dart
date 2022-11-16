import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entity/request_status/request_status.dart';
import '../../../domain/usecase/create_free_parking_usecase.dart';
import '../../../domain/usecase/delete_free_parking_usecase.dart';
import '../../../domain/usecase/get_free_parking_usecase.dart';
import '../../../domain/usecase/update_free_parking_usecase.dart';
import 'free_parking_state.dart';
import 'free_parking_event.dart';

class FreeParkingBloc extends Bloc<FreeParkingEvent, FreeParkingState> {
  final GetFreeParkingUsecase getFreeParkingUsecase;
  final CreateFreeParkingUsecase createFreeParkingUsecase;
  final UpdateFreeParkingUsecase updateFreeParkingUsecase;
  final DeleteFreeParkingUsecase deleteFreeParkingUsecase;

  FreeParkingBloc({
    required this.getFreeParkingUsecase,
    required this.createFreeParkingUsecase,
    required this.updateFreeParkingUsecase,
    required this.deleteFreeParkingUsecase,
  }) : super(FreeParkingState()) {
    on<InitFreeParkingEvent>((event, emit) {});
    on<GetFreeParkingEvent>((event, emit) async {
      emit(
        state.copyWith(
          getFreeParkingRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await getFreeParkingUsecase(
          GetFreeParkingParams(userId: event.userId));
      result.fold(
        (error) => emit(
          state.copyWith(
            getFreeParkingRequestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            getFreeParkingRequestStatus: RequestStatus.success(data: result),
            freeParkingList: result,
          ),
        ),
      );
    });
    on<DeleteFreeParkingEvent>((event, emit) async {
      emit(
        state.copyWith(
          deleteFreeParkingRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result =
          await deleteFreeParkingUsecase(DeleteFreeParkingParams(id: event.id));
      result.fold(
        (error) => emit(
          state.copyWith(
            deleteFreeParkingRequestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            deleteFreeParkingRequestStatus: RequestStatus.success(data: result),
          ),
        ),
      );
    });
    on<CreateFreeParkingEvent>((event, emit) async {
      emit(
        state.copyWith(
          createFreeParkingRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await createFreeParkingUsecase(CreateFreeParkingParams(
        userId: event.userId,
        parkingId: event.parkingId,
      ));
      result.fold(
        (error) => emit(
          state.copyWith(
            createFreeParkingRequestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            createFreeParkingRequestStatus: RequestStatus.success(data: result),
            freeParkingList: result,
          ),
        ),
      );
    });
  }
}
