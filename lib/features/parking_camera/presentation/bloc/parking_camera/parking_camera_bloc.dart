import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entity/request_status/request_status.dart';
import '../../../domain/usecase/get_parking_camera_usecase.dart';
import 'parking_camera_state.dart';
import 'parking_camera_event.dart';

class ParkingCameraBloc extends Bloc<ParkingCameraEvent, ParkingCameraState> {
  final GetParkingCameraUsecase getParkingCameraUsecase;

  ParkingCameraBloc({
    required this.getParkingCameraUsecase,
  }) : super(ParkingCameraState()) {
    on<InitFreeParkingEvent>((event, emit) {});
    on<GetParkingCameraEvent>((event, emit) async {
      emit(
        state.copyWith(
          parkingCameraRequestStatus: const RequestStatus.loading(),
        ),
      );
      var result = await getParkingCameraUsecase(GetParkingCameraParams(
        cameraUid: event.cameraUid,
        parkingUid: event.parkingUid,
      ));
      result.fold(
        (error) => emit(
          state.copyWith(
            parkingCameraRequestStatus: RequestStatus.failure(error: error),
          ),
        ),
        (result) => emit(
          state.copyWith(
            parkingCameraRequestStatus:
                RequestStatus.success(data: [...state.imageUrlList, result]),
            imageUrlList: [...state.imageUrlList, result],
          ),
        ),
      );
    });
    on<ResetParkingCamerasEvent>((event, emit) async {
      emit(
        state.copyWith(
          imageUrlList: [],
        ),
      );
    });
  }
}
